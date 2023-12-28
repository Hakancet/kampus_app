import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Tasarim/RestoranTasarim.dart';
import 'package:kampusapp/Yonetici/Yemek/Services/RestoranServices.dart';

class YemekRestoran extends StatefulWidget {
  const YemekRestoran({Key? key}) : super(key: key);

  @override
  State<YemekRestoran> createState() => _YemekRestoranState();
}

class _YemekRestoranState extends State<YemekRestoran> {
  final RestoranServices restoranServices = RestoranServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEF9A9A),
      appBar: AppBar(
        leadingWidth: 60,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFFE53935),
        centerTitle: true,
        title: Text('Restoranlar' , style: GoogleFonts.poppins(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: restoranServices.getRestoran(),
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
              var restoranData = document.data() as Map<String, dynamic>;

              return RestoranTasarim(
                  ad: restoranData['restoranAd'] ?? '', // null kontroülünü yapmayı unutma
                  yer: restoranData['restoranYer'] ?? '',
                  saat: restoranData['restoranSaat'] ?? ''
              ) ;
            },
          );
        },
      ),
    );
  }
}
