import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YonetimGezi extends StatefulWidget {
  const YonetimGezi({Key? key}) : super(key: key);

  @override
  State<YonetimGezi> createState() => _YonetimGeziState();
}

class _YonetimGeziState extends State<YonetimGezi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFB74D),
        centerTitle: true,
        title: Image.asset('assets/images/gezi.png',
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
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB74D),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Gezi Yerleri',
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
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB74D),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Gezi Rotaları',
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
