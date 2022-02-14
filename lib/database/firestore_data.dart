import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:usa_in_ua/models/user/user.dart';

class FireStoreDatabase {

  FireStoreDatabase._();

  static final FireStoreDatabase _instance = FireStoreDatabase._();

  factory FireStoreDatabase() {
    return _instance;
  }

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
}
