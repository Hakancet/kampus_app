import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StajTasarim extends StatelessWidget {
  final String yer;
  final String adres;
  final String numara;

  StajTasarim({
    required this.yer,
    required this.adres,
    required this.numara,
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
                  child: Text('Yeni Staj' , style: GoogleFonts.poppins(fontSize: 22 ,fontWeight: FontWeight.bold , color: Colors.blue),),
                ),
                const Divider(
                  height: 5,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text(
                      'Staj Yeri:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      yer,
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
                      'İşyeri Adresi:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(adres,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'İş Yeri Numara:',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(numara,
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
