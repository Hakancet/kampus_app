import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BizeUlas extends StatefulWidget {
  const BizeUlas({Key? key}) : super(key: key);

  @override
  State<BizeUlas> createState() => _BizeUlasState();
}

class _BizeUlasState extends State<BizeUlas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0XFFD4E157),
          centerTitle: true,
          title: Text(
            'Bize Ulaşın',
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: MediaQuery.of(context).size.height/11,
                      width: MediaQuery.of(context).size.width/1.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Şikeyet İçin', style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22, ),),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2.5,
                          ),
                          Icon(Icons.arrow_forward, size: 28,)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: MediaQuery.of(context).size.height/11,
                      width: MediaQuery.of(context).size.width/1.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Öneriler ve Dilekler', style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22, ),),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/5.3,
                          ),
                          Icon(Icons.arrow_forward, size: 28,)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: MediaQuery.of(context).size.height/11,
                      width: MediaQuery.of(context).size.width/1.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('İletişim', style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22, ),),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                          ),
                          Icon(Icons.arrow_forward, size: 28,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
