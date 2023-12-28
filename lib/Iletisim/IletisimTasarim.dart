import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IletisimTasarim extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;
  final double size;
  final String subtitle;
  const IletisimTasarim({
    required this.subtitle,
    required this.image,
    required this.label,
    required this.onTap,
    this.size = 180,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        width: MediaQuery.of(context).size.width/2.15,
        height: MediaQuery.of(context).size.height/4,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [Color(0XFFFFF176), Color(0XFFF9A825)],
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
                      label,
                      style: GoogleFonts.poppins(fontSize: 20 , color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      subtitle,
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

