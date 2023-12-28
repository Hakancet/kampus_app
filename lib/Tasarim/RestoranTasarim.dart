import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestoranTasarim extends StatelessWidget {
  final String ad;
  final String yer;
  final String saat;

  RestoranTasarim({
    required this.ad,
    required this.yer,
    required this.saat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/2.5,
        width: MediaQuery.of(context).size.width/8,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/yemek.png',
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Restoran Adı:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      ad,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Restoran Yeri:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(yer,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Restoran Aktif Saatleri:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(saat,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
