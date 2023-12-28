import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Yonetici/Sosyal/Etkinlik_ekle.dart';
import 'package:kampusapp/Yonetici/Sosyal/Konser_ekle.dart';
import 'package:kampusapp/Yonetici/Sosyal/Mekan_ekle.dart';
import 'package:kampusapp/Yonetici/Sosyal/Services/G%C3%B6r%C3%BCn%C3%BCmEtkinlik.dart';

class YonetimSosyal extends StatefulWidget {
  const YonetimSosyal({Key? key}) : super(key: key);

  @override
  State<YonetimSosyal> createState() => _YonetimSosyalState();
}

class _YonetimSosyalState extends State<YonetimSosyal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF0D47A1),
        centerTitle: true,
        title: Image.asset('assets/images/sosyal.png',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EtkinlikEkle()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Etkinlik Ekle',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KonserEkle()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Konser Ekle',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MekanEkle()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Eğlence Mekanı Ekle',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              /*const Divider(
                height: 50,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),

               */
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GorunumEtkinlik()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Görünüm Etkinlik',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
