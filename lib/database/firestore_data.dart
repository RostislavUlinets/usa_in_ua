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

    documentSnapshot.docs.map(
      (value) {
        print(value.get('uid').toString());

        return UserModel(
          uid: value.get('uid'),
          name: value.get('name'),
          email: value.get('email'),
          phone: value.get('phone'),
        );
      },
    );
  }
}
