import 'package:flutter/material.dart';
import 'package:kampusapp/Iletisim/Iletisim_main.dart';

class IletisimSplah extends StatefulWidget {
  @override
  _IletisimSplahState createState() => _IletisimSplahState();
}

class _IletisimSplahState extends State<IletisimSplah> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  Iletisim_main()),
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
              colors: [Color(0XFFFFEE58), Color(0XFFFBC02D)],
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
                  child: Image.asset('assets/images/iletisim.png',fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
