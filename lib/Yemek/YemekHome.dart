import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Yemek/Yemek_indirim.dart';
import 'package:kampusapp/Yemek/Yemek_restoran.dart';

class YemekHome extends StatefulWidget {
  const YemekHome({Key? key}) : super(key: key);

  @override
  State<YemekHome> createState() => _YemekHomeState();
}

class _YemekHomeState extends State<YemekHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEF9A9A),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFFE53935),
        centerTitle: true,
        title: Image.asset('assets/images/yemek.png' ,height: MediaQuery.of(context).size.height/11),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Restoranlar' , style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 22 ),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3.7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YemekRestoran()));
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
              const SizedBox(height: 250,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('İndirimli Yerler' , style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 22 ),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YemekIndirim()));
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
            ],
          ),
        ),
      ),
    );
  }
}
