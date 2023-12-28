import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EtkinliklerTasarim extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final String time;
  final Function onTap;
  final double size;
  final String subtitle;
  const EtkinliklerTasarim({
    required this.subtitle,
    required this.image,
    required this.label,
    required this.time,
    required this.onTap,
    this.size = 180,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: MediaQuery.of(context).size.height/2.4,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [Color(0XFF1565C0), Color(0XFF6A1B9A)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            Card(
              color: Colors.yellow[100],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(5)),
              ),
              child: Column(
                children: [
                  Image(
                    image: image,
                    height: size,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Etkinlik Adı: $label',
                      style: GoogleFonts.poppins(fontSize: 20 , color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Etkinlik Yeri: $subtitle',
                      style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Zaman: $time',
                      style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

