import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:usa_in_ua/models/auth/core/errors.dart';
import 'package:usa_in_ua/models/auth/domain/auth_failure.dart';
import 'package:usa_in_ua/models/auth/domain/i_auth_facade.dart';
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithPhoneNumber({
    required PhoneNumber phoneNumber,
  }) async {
    final phoneNumberStr = phoneNumber.getOrCrash();
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumberStr,
        verificationCompleted: (PhoneAuthCredential credential) async {
          UserCredential _userCredential =
              await _firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          log(e.toString());
        },
        codeSent: (String verificationId, int? resendToken) async {
          // final code = await Navigator.push(
          //   // context,
          //   // MaterialPageRoute(
          //   //   builder: (context) => CodeSent(),
          //   // ),
          // );

          // AuthCredential credential = PhoneAuthProvider.credential(
          //   verificationId: verificationId,
          //   smsCode: code,
          // );

          // UserCredential result =
          //     await _firebaseAuth.signInWithCredential(credential);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'phone-number-already-exists') {
        return left(const AuthFailure.phoneNumberAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumberAndPassword({
    required PhoneNumber phoneNumber,
    required Password password,
  }) {
    final phoneNumberStr = phoneNumber.getOrCrash();
    final passwordStr = password.getOrCrash();

    throw UnimplementedError();
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
    }
  }
}
