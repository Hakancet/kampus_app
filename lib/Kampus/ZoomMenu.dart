import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Diger/BizeUlas.dart';
import 'package:kampusapp/Gezi/GeziSplash.dart';
import 'package:kampusapp/Iletisim/Splash_iletisim.dart';
import 'package:kampusapp/Kullanici/Profil.dart';
import 'package:kampusapp/Ogrenci/OgrenciSplash.dart';
import 'package:kampusapp/Sosyal/SosyalSplash.dart';
import 'package:kampusapp/Yemek/YemekSplash.dart';

class ZoomMenu extends StatefulWidget {
  const ZoomMenu({Key? key}) : super(key: key);

  @override
  State<ZoomMenu> createState() => _ZoomMenuState();
}

class _ZoomMenuState extends State<ZoomMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0XFF1565C0),Color(0XFF6A1B9A)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8),
                    child: InkWell(
                      onTap: (){},
                      child: Column(
                        children: [
                          Text('KAMPÜS' , style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 30),),
                          Text('v1.0', style: GoogleFonts.poppins(color: Colors.white ,fontWeight: FontWeight.w500 , fontSize: 12),),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Deneme Kullanıcı' , style: GoogleFonts.poppins(color: Colors.white ,fontSize: 20),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 15,
                  endIndent: 70,
                  indent: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IletisimSplah()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/iletisim.png',
                        width: MediaQuery.of(context).size.width/3.5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OgrenciSplash()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Image.asset('assets/images/ogrencii.png',
                      width: MediaQuery.of(context).size.width/3.5,
                      ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SosyalSplash()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Image.asset('assets/images/sosyal.png',
                      width: MediaQuery.of(context).size.width/3.5,
                      ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> YemekSplash()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/yemek.png',
                          width: MediaQuery.of(context).size.width/3.5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> GeziSplash()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/gezi.png',
                          width: MediaQuery.of(context).size.width/3.7,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 15,
                  endIndent: 30,
                  indent: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BizeUlas()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(FluentIcons.location_24_filled, color: Colors.white,),
                        const SizedBox(width: 10,),
                        Text('Bize Ulaşın' ,style: GoogleFonts.poppins(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ) ,
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(FluentIcons.person_32_filled, color: Colors.white,),
                        const SizedBox(width: 10,),
                        Text('Profil' ,style: GoogleFonts.poppins(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ) ,
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.logout, color: Colors.white,),
                        const SizedBox(width: 10,),
                        Text('Çıkış Yap' ,style: GoogleFonts.poppins(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
