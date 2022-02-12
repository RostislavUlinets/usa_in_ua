import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:usa_in_ua/models/user/user.dart';

class FireStoreDatabase {
  final String uid = FirebaseAuth.instance.currentUser!.uid;

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser(UserModel user) async {
    await userCollection.doc(uid).set(user.toJson());
  }

  Future<void> updateUser(UserModel user) async {
    await userCollection.doc(uid).update(user.toJson());
  }

  Future<void> deleteUser() async {
    await userCollection.doc(uid).delete();
  }

  Future<UserModel?> findUserByPhoneNumber(String phoneNumber) async {
    QuerySnapshot<Object?> documentSnapshot =
        await userCollection.where('phone', isEqualTo: phoneNumber).get();

    if (documentSnapshot.docs.isEmpty) {
      return null;
    }

    return UserModel(
      uid: documentSnapshot.docs[0]['uid'],
      name: documentSnapshot.docs[0]['name'],
      email: documentSnapshot.docs[0]['email'],
      phone: documentSnapshot.docs[0]['phone'],
    );
  }
}
