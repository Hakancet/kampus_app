import 'package:flutter/material.dart';
import 'package:kampusapp/Sosyal/SosyalHome.dart';

class SosyalSplash extends StatefulWidget {
  @override
  _SosyalSplashState createState() => _SosyalSplashState();
}

class _SosyalSplashState extends State<SosyalSplash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  SosyalHome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFF9575CD), Color(0XFF4527A0)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/sosyal.png',fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
