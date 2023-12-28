import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Kullanici/Kayit.dart';
import 'package:kampusapp/Kullanici/Login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Giris extends StatefulWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  final PageController controller = PageController();
  int currentPage = 0;
  late Timer autoLoopTimer;

  @override
  void initState() {
    super.initState();

    autoLoopTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
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
        body: SafeArea(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6200EA),
                Color(0xFF7E57C2),
                Color(0xFFB388FF),
                Color(0xFFB388FF),
                Color(0xFF64a7ce),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/kampus.png',
                    width: MediaQuery.of(context).size.width/2,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Üniversitilerin Sosyal Etkinlikleri',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 250,
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
                          'assets/images/deneme.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/deneme.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/deneme.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      dotColor: Colors.black26,
                      activeDotColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Container(
                    height: 65,
                    width: 370,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        colors: [Color(0XFF1565C0), Color(0XFF6A1B9A)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Giriş',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Kayit()));
                  },
                  child: Container(
                    height: 65,
                    width: 370,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        colors: [Color(0XFF1565C0), Color(0XFF6A1B9A)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Kayıt Ol',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
