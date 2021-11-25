import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserManagement {
  storeNewUser(user, context) async {
    User user = await FirebaseAuth.instance.currentUser;
    var firebaseUser = await FirebaseFirestore.instance.collection('data').doc(user.uid).get();
  }
}