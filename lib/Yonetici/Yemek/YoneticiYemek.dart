import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Yonetici/Yemek/IndirimliYer.dart';
import 'package:kampusapp/Yonetici/Yemek/RestoranEkle.dart';

class YoneticiYemek extends StatefulWidget {
  const YoneticiYemek({Key? key}) : super(key: key);

  @override
  State<YoneticiYemek> createState() => _YoneticiYemekState();
}

class _YoneticiYemekState extends State<YoneticiYemek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFE57373),
        centerTitle: true,
        title: Image.asset('assets/images/yemek.png',
            height: MediaQuery.of(context).size.height / 9),
      ),
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
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RestoranEkle()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Color(0xFFE57373),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Restoranlar',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IndirimEkle()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Color(0xFFE57373),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'İndirimli Yerler',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
