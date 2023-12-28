import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IsTasarim extends StatelessWidget {
  final String yer;
  final String adres;
  final String numara;

  IsTasarim({
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
                  child: Text('Yeni İş İlanı' , style: GoogleFonts.poppins(fontSize: 22 ,fontWeight: FontWeight.bold , color: Colors.blue),),
                ),
                Divider(
                  height: 5,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text(
                      'İşyeri:',
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
                      'Adresi:',
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
