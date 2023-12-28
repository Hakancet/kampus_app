import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Yonetici/Yemek/Services/IndirimServices.dart';

import '../Tasarim/IndirimTasarim.dart';

class YemekIndirim extends StatefulWidget {
  const YemekIndirim({Key? key}) : super(key: key);

  @override
  State<YemekIndirim> createState() => _YemekIndirimState();
}

class _YemekIndirimState extends State<YemekIndirim> {

  final IndirimServices indirimServices = IndirimServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEF9A9A),
      appBar: AppBar(
        leadingWidth: 60,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFFE53935),
        centerTitle: true,
        title: Text('İndirimli Yerler' , style: GoogleFonts.poppins(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: indirimServices.getIndirim(),
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
              var indirimData = document.data() as Map<String, dynamic>;

              // null değerini kontrol et
              String ad = indirimData['restoranAdi'] ?? '';
              String yer = indirimData['restoranYer'] ?? '';
              String saat = indirimData['restoranSaat'] ?? '';
              String indirimOrani = indirimData['indirimOrani'] ?? '';

              return IndirimTasarim(
                ad: ad,
                yer: yer,
                saat: saat,
                indirimOrani: indirimOrani,
              );
            },
          );

        },
      ),
    );
  }
}
