import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoggedinOrNot with ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<UserCredential> emailandpassword(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future logOff() async {
    return await FirebaseAuth.instance.signOut();
  }
}
