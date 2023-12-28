import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Sosyal/SosyalEglence.dart';
import 'package:kampusapp/Sosyal/SosyalEtkinlikler.dart';
import 'package:kampusapp/Sosyal/SosyalKonserler.dart';

class SosyalHome extends StatefulWidget {
  const SosyalHome({Key? key}) : super(key: key);

  @override
  State<SosyalHome> createState() => _SosyalHomeState();
}

class _SosyalHomeState extends State<SosyalHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E57C2),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFF3949AB),
        centerTitle: true,
        title: Image.asset('assets/images/sosyal.png' ,height: MediaQuery.of(context).size.height/11),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Etkinlikler',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.7,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SosyalEtkinlikler()));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Tümünü Gör',
                          style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              )

              ),
              const SizedBox(height: 150,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Konserler' , style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 22 ),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.55,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SosyalKonserler()));
                      },
                      child: Row(
                        children: [
                          Text('Tümünü Gör' , style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),),
                          const Icon(Icons.arrow_forward , color: Colors.white, size: 15,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 150,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Eğlence Yerleri' , style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 22 ),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/4.1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SosyalEglence()));
                      },
                      child: Row(
                        children: [
                          Text('Tümünü Gör' , style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),),
                          const Icon(Icons.arrow_forward , color: Colors.white, size: 15,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 150,),
            ],
          ),
        ),
      ),
    );
  }
}
