import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeziHome extends StatefulWidget {
  const GeziHome({Key? key}) : super(key: key);

  @override
  State<GeziHome> createState() => _GeziHomeState();
}

class _GeziHomeState extends State<GeziHome> {
  final List<String> carouselImages = [
    'assets/images/Adsiz.png',
    'assets/images/Adsiz.png',
    'assets/images/Adsiz.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFF8F00),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFFFFB300),
        centerTitle: true,
        title: Image.asset('assets/images/gezi.png' ,height: MediaQuery.of(context).size.height/11),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                      height: 200,
                      child: CarouselSlider(
                        items: carouselImages
                            .map(
                              (item) => ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(item, fit: BoxFit.cover),
                          ),
                        )
                            .toList(),
                        options: CarouselOptions(
                          aspectRatio: 13 / 5,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 15),
                child: Text('Aktif Geziler' , style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                          color: Color(0XFFFFE0B2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/gezi.png', fit: BoxFit.cover,),
                            Text('Gezi',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30 ,fontWeight: FontWeight.bold),),
                            Text('Gezi Yerleri',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                          color: Color(0XFFFFE0B2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/gezi.png', fit: BoxFit.cover,),
                            Text('Gezi',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30 ,fontWeight: FontWeight.bold),),
                            Text('Gezi Yerleri',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                          color: Color(0XFFFFE0B2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/gezi.png', fit: BoxFit.cover,),
                            Text('Gezi',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30 ,fontWeight: FontWeight.bold),),
                            Text('Gezi Yerleri',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                          color: Color(0XFFFFE0B2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/gezi.png', fit: BoxFit.cover,),
                            Text('Gezi',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30 ,fontWeight: FontWeight.bold),),
                            Text('Gezi Yerleri',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
