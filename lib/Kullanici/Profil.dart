import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  String ad = '';
  String soyad = '';
  String email = '';
  String password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  void getUserData() {
    FirebaseFirestore.instance.collection('users').get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          ad = doc['name'];
          soyad = doc['surname'];
          email = doc['email'];
          password = doc['password'];
        });
      });
    }).catchError((error) {
      print('Veri alınırken bir hata oluştu: $error');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0XFF4DD0E1),
          centerTitle: true,
          title: Text(
            'Profil',
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'Adınız : $ad',
                      style: GoogleFonts.poppins(fontSize: 25),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'Soyadınız : $soyad',
                      style: GoogleFonts.poppins(fontSize: 25),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'E-mail: $email',
                      style: GoogleFonts.poppins(fontSize: 22),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                          'Şifreniz : $password ',
                          style: GoogleFonts.poppins(fontSize: 25),
                        )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/8,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        color: Color(0XFF4DD0E1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Çıkış Yap',
                          style: GoogleFonts.poppins(fontSize: 25 , color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 15,),
                        Icon(Icons.exit_to_app , size: 30, color: Colors.white,)
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
