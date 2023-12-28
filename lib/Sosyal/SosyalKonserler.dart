import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Tasarim/KonserTasarim.dart';
import 'package:kampusapp/Yonetici/Sosyal/Services/KonserService.dart';

class SosyalKonserler extends StatefulWidget {
  const SosyalKonserler({Key? key}) : super(key: key);

  @override
  State<SosyalKonserler> createState() => _SosyalKonserlerState();
}

class _SosyalKonserlerState extends State<SosyalKonserler> {
  final KonserService konserService = KonserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E57C2),
      appBar: AppBar(
        leadingWidth: 60,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFF3949AB),
        centerTitle: true,
        title: Text('Konserler' , style: GoogleFonts.poppins(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: konserService.getKonser(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Bir hata oluştu.'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Column(
              children: [
                Icon(Icons.notification_important, color: Colors.grey,size: 25,),
                SizedBox( height: 10,),
                Text('Konser Yok !')
              ],
            ));
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var document = snapshot.data!.docs[index];
              var konserData = document.data() as Map<String, dynamic>;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: KonserTasarim(
                    ad: konserData['sanatcı'],
                    yer: konserData['konserYer'],
                    saat: konserData['konserSaat']),
              );
            },
          );
        },
      ),
    );
  }
}
