import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kampusapp/Kampus/ZoomPage.dart';
import 'package:kampusapp/Kullanici/Login.dart';

class AuthServices {
  final userCollection = FirebaseFirestore.instance.collection("users");
  final firebaseAuth = FirebaseAuth.instance;

  bool isValidEmail(String email) {
    RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+edu\.tr$');
    return regex.hasMatch(email);
  }

  Future<void> datakayit({
    required String name,
    required String email,
    required String password,
    required String againpassword,
    required String surname,
  }) async {
    await userCollection.doc().set({
      "name": name,
      "email": email,
      "password": password,
      "againpassword": againpassword,
      "surname": surname,
    });
  }

  Future<void> kullanicikayit(
      BuildContext context, {
        required String name,
        required String email,
        required String password,
        required String againpassword,
        required String surname,
      }) async {
    final navigator = Navigator.of(context);
    try {
      if (!isValidEmail(email)) {
        Fluttertoast.showToast(
            msg: 'Geçersiz e-posta adresi', toastLength: Toast.LENGTH_LONG);
        return;
      }

      final UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        datakayit(
          name: name,
          email: email,
          password: password,
          surname: surname,
          againpassword: againpassword,
        );
        navigator.push(MaterialPageRoute(builder: (context) => const Login()));
        Fluttertoast.showToast(
            msg: 'Kayıt Olundu', toastLength: Toast.LENGTH_LONG);
      }
    } on FirebaseAuthException {
      print('hata ');
    }
  }

  Future<void> kullanicigiris(
      BuildContext context, {
        required String email,
        required String password,
      }) async {
    final navigator = Navigator.of(context);
    try {
      final UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        navigator.push(MaterialPageRoute(builder: (context) => const ZoomPage()));
        Fluttertoast.showToast(
            msg: 'Giriş Yaptınız', toastLength: Toast.LENGTH_LONG);
      }
    } on FirebaseAuthException {
      print('hata oldu');
    }
  }
}
