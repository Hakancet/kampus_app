import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ogrenci_dahafazla extends StatefulWidget {
  const Ogrenci_dahafazla({Key? key}) : super(key: key);

  @override
  State<Ogrenci_dahafazla> createState() => _Ogrenci_dahafazlaState();
}

class _Ogrenci_dahafazlaState extends State<Ogrenci_dahafazla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0XFF90CAF9),
        centerTitle: true,
        title: Text('Daha Fazla', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Daha Fazla' , style: GoogleFonts.poppins(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Divider(
                height: 15,
                endIndent:10,
                indent: 10,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Şikayet Var!' , style: GoogleFonts.poppins(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Divider(
                height: 15,
                endIndent:10,
                indent: 10,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Bize Ulaşın' , style: GoogleFonts.poppins(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
