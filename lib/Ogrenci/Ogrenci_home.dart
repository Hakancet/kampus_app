import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ogrenci_home extends StatefulWidget {
  const Ogrenci_home({Key? key}) : super(key: key);

  @override
  State<Ogrenci_home> createState() => _Ogrenci_homeState();
}

class _Ogrenci_homeState extends State<Ogrenci_home> {
  final List<String> carouselImages = [
    'assets/images/Adsiz.png',
    'assets/images/Adsiz.png',
    'assets/images/Adsiz.png',
  ];
  final PageController controller = PageController();
  int currentPage = 0;
  late Timer autoLoopTimer;

  @override
  void initState() {
    super.initState();

    autoLoopTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }


  @override
  void dispose() {
    autoLoopTimer.cancel();
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0XFF90CAF9),
        centerTitle: true,
        title: Image.asset('assets/images/ogrencii.png' ,height: MediaQuery.of(context).size.height/11),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 180,
                width: 400,
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/Adsiz.png',
                        width: 400,
                        height: 180,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/Adsiz.png',
                        width: 400,
                        height: 180,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/Adsiz.png',
                        width: 400,
                        height: 180,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height:5,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: const ExpandingDotsEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 9.0,
                    dotHeight: 9.0,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.indigo,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Bildirimler', style: GoogleFonts.poppins(color: Color(0XFF90CAF9), fontSize: 26, fontWeight: FontWeight.bold),),
              ),
              Divider(
                indent: 15,
                endIndent: 30,
                color: Color(0XFF90CAF9),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0XFF90CAF9),
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Duyurular', style: GoogleFonts.poppins(color: Color(0XFF90CAF9), fontSize: 26, fontWeight: FontWeight.bold),),
              ),
              Divider(
                indent: 15,
                endIndent: 30,
                color: Color(0XFF90CAF9),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0XFF90CAF9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
