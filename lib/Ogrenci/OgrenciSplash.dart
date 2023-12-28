import 'package:flutter/material.dart';
import 'package:kampusapp/Ogrenci/OgrenciTabbar.dart';

class OgrenciSplash extends StatefulWidget {
  @override
  _OgrenciSplashState createState() => _OgrenciSplashState();
}

class _OgrenciSplashState extends State<OgrenciSplash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  Ogrenci_tabbar()),
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
              colors: [Color(0XFF2962FF), Color(0XFF80D8FF)],
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
                  child: Image.asset('assets/images/ogrencii.png',fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
