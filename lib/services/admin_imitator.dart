import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:usa_in_ua/models/user/user.dart';

class AdminImitator {
  AdminImitator._();

  static final AdminImitator _instance = AdminImitator._();

  factory AdminImitator() {
    return _instance;
  }

  Future<UserModel?> findUserByPhoneNumber(String phoneNumber) async {
    final CollectionReference userCollection =
        FirebaseFirestore.instance.collection('users');

    QuerySnapshot<Object?> documentSnapshot =
        await userCollection.where('phone', isEqualTo: phoneNumber).get();

    if (documentSnapshot.docs.isEmpty) {
      return null;
    }

    // UserModel.fromJson();

    return UserModel(
      uid: documentSnapshot.docs[0]['uid'],
      name: documentSnapshot.docs[0]['name'],
      email: documentSnapshot.docs[0]['email'],
      phone: documentSnapshot.docs[0]['phone'],
    );
  }
}
