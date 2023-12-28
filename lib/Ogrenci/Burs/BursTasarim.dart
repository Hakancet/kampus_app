import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BursTasarim extends StatelessWidget {
  final String kurum;
  final String ay;
  final String miktar;

  BursTasarim({
    required this.kurum,
    required this.ay,
    required this.miktar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/4.8,
        width: MediaQuery.of(context).size.width/1.1,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Text('Yeni Burs' , style: GoogleFonts.poppins(fontSize: 22 ,fontWeight: FontWeight.bold , color: Colors.blue),),
                ),
                Divider(
                  height: 5,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text(
                      'Burs Veren Kurum:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      kurum,
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
                      'Burs Kaç Ay:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(ay,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Burs Miktarı:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(miktar,
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
