import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Kampus/ZoomPage.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  bool isEmailVerify = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    checkEmailVerification();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerification() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.reload();
      if (user.emailVerified) {
        timer?.cancel();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ZoomPage()));
      } else {
        sendEmailVerify();
        timer = Timer.periodic(Duration(seconds: 3), (_) => checkEmailVerification());
      }
    }
  }

  Future<void> sendEmailVerify() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null && !canResendEmail) {
      await user.sendEmailVerification();
      setState(() => canResendEmail = true);
    }
  }

  @override
  Widget build(BuildContext context) => isEmailVerify
      ? ZoomPage()
      : Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      title: const Text('E-Mail Doğrulama'),
      centerTitle: true,
    ),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lütfen E-mail Adresinizi Doğrulayın',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: canResendEmail ? sendEmailVerify : null,
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 25),
                        child: Text(
                          'Tekrar E-Mail Gönder',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.email,
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () => FirebaseAuth.instance.signOut(),
                child: Text(
                  'İptal Et',
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
