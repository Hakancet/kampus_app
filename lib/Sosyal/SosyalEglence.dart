import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Tasarim/MekanTasarim.dart';
import 'package:kampusapp/Yonetici/Sosyal/Services/MekanService.dart';

class SosyalEglence extends StatefulWidget {
  const SosyalEglence({Key? key}) : super(key: key);

  @override
  State<SosyalEglence> createState() => _SosyalEglenceState();
}

class _SosyalEglenceState extends State<SosyalEglence> {
  final MekanService mekanService = MekanService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E57C2),
      appBar: AppBar(
        leadingWidth: 60,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFF3949AB),
        centerTitle: true,
        title: Text('Eğlence Yerleri' , style: GoogleFonts.poppins(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: mekanService.getMekan(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Bir hata oluştu.'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('Veri bulunamadı.'));
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var document = snapshot.data!.docs[index];
              var mekanData = document.data() as Map<String, dynamic>;

              return MekanTasarim(
                  ad: mekanData['mekanAd'] ?? '',
                  yer: mekanData['mekanYer'] ?? '',
                  saat: mekanData['mekanSaat'] ?? ''
              );
            },
          );
        },
      ),
    );
  }
}
