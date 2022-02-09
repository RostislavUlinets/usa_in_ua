import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:usa_in_ua/models/user/user.dart';

class FireStoreDatabase {
  FireStoreDatabase._();

  final String uid = FirebaseAuth.instance.currentUser!.uid;

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> storeUserData({required String userName}) async {
    DocumentSnapshot ds = await userCollection.doc(uid).get();

    
  }
}
