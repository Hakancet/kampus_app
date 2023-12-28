import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Tasarim/SosyalPostT.dart';
import 'package:kampusapp/Yonetici/Sosyal/Services/EtkinlikService.dart';

class SosyalEtkinlikler extends StatefulWidget {
  const SosyalEtkinlikler({Key? key}) : super(key: key);

  @override
  State<SosyalEtkinlikler> createState() => _SosyalEtkinliklerState();
}

class _SosyalEtkinliklerState extends State<SosyalEtkinlikler> {
  final EtkinlikService etkinlikService = EtkinlikService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E57C2),
      appBar: AppBar(
        leadingWidth: 60,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFF3949AB),
        centerTitle: true,
        title: Text(
          'Etkinlikler',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: etkinlikService.getEtkinlik(),
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
              var etkinlikData = document.data() as Map<String, dynamic>;

              return SosyalPostT(
                  ad: etkinlikData['etkinlikAd'],
                  yer: etkinlikData['etkinlikYer'],
                  saat: etkinlikData['etkinlikSaat'],
                  detay: etkinlikData['etkinlikDetay']);
            },
          );
        },
      ),
    );
  }
}
