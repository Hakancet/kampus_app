import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Yonetici/Gezi/YonetimGezi.dart';
import 'package:kampusapp/Yonetici/Sosyal/Yonetim_sosyal.dart';
import 'package:kampusapp/Yonetici/Yemek/YoneticiYemek.dart';

class YoneticiHome extends StatefulWidget {
  const YoneticiHome({Key? key}) : super(key: key);

  @override
  State<YoneticiHome> createState() => _YoneticiHomeState();
}

class _YoneticiHomeState extends State<YoneticiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF0D47A1),
          centerTitle: true,
          title: Text(
            'Yönetim Paneli',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/kampus.png',
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => YonetimSosyal()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/images/sosyal.png',
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> YoneticiYemek()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/images/yemek.png',
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const YonetimGezi()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.orange[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/images/gezi.png',
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
