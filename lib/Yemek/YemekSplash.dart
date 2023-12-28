import 'package:flutter/material.dart';
import 'package:kampusapp/Yemek/YemekHome.dart';

class YemekSplash extends StatefulWidget {
  @override
  _YemekSplashState createState() => _YemekSplashState();
}

class _YemekSplashState extends State<YemekSplash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  YemekHome()),
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
              colors: [Color(0XFFD50000), Color(0XFFFF5252)],
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
                  child: Image.asset('assets/images/yemek.png',fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
