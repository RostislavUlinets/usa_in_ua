import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:usa_in_ua/database/firestore_data.dart';
import 'package:usa_in_ua/models/auth/domain/auth_failure.dart';
import 'package:usa_in_ua/models/auth/domain/i_auth_facade.dart';
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';
import 'package:usa_in_ua/models/user/user.dart';
import 'package:usa_in_ua/pages/authorization/widgets/otp_widget.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, String>> verifyPhoneNumber({
    required PhoneNumber phoneNumber,
  }) async {
    final phoneNumberStr = phoneNumber.getOrCrash();
    final completer = Completer<Either<AuthFailure, String>>();
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumberStr,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          log('123');
          await _firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          log(e.toString());
          completer.complete(left(const AuthFailure.serverError()));
        },
        codeSent: (String verificationId, int? resendToken) {
          log('sad boy');
          completer.complete(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          log('Code timeout');
          completer.complete(left(const AuthFailure.serverError()));
        },
      );
      return completer.future;
    } on PlatformException catch (e) {
      if (e.code == 'phone-number-already-exists') {
        log('error 1');
        return left(const AuthFailure.phoneNumberAlreadyInUse());
      } else {
        log('error 2');
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      log('error 3');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmOTP({
    required String verificationCode,
    required String otpCode,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationCode,
        smsCode: otpCode,
      );
      log('VerificatonCode: $verificationCode \n SmsCode: $otpCode');
      final UserCredential authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (authResult.user != null) {
        log('Succes');
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'phone-number-already-exists') {
        return left(const AuthFailure.phoneNumberAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    } on PlatformException {
      return left(const AuthFailure.cancelledByUser());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumberAndPassword({
    required PhoneNumber phoneNumber,
    required Password password,
  }) async {
    try {
      String phoneNumberStr = phoneNumber.getOrCrash();
      String passwordStr = password.getOrCrash();
      FireStoreDatabase database = FireStoreDatabase();
      UserModel? user = await database.findUserByPhoneNumber(phoneNumberStr);
      final authCredential = EmailAuthProvider.credential(
        email: user!.email,
        password: passwordStr,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return left(
            const AuthFailure.invalidPhoneNumberAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      return left(const AuthFailure.cancelledByUser());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> generateEmailAccount(
      {required EmailAddress emailAddress, required String password}) async {
    try {
      final email = emailAddress.getOrCrash();

      final credential = EmailAuthProvider.credential(
        email: email,
        password: password,
      );

      await _firebaseAuth.currentUser!.linkWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
      return left(const AuthFailure.serverError());
    } catch (e) {
      log(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> restorePassword(
      {required String contactInfo}) async {
    try {
      if (contactInfo.startsWith('+')) {
        FireStoreDatabase database = FireStoreDatabase();
        UserModel? user = await database.findUserByPhoneNumber(contactInfo);
        if (user == null) {
          throw FirebaseAuthException(code: 'User not found');
        }
        contactInfo = user.email;
      }
      await _firebaseAuth.sendPasswordResetEmail(email: contactInfo);
      return right(unit);
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
