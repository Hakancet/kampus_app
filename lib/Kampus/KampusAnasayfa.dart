import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Kampus/KampusApi/KampusArticles.dart';
import 'package:kampusapp/Kampus/KampusApi/KampusService.dart';
import 'package:kampusapp/Kullanici/Profil.dart';
import 'package:kampusapp/Tasarim/EtkinliklerTasarim.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

class KampusSayfa extends StatefulWidget {
  const KampusSayfa({Key? key}) : super(key: key);

  @override
  State<KampusSayfa> createState() => _KampusSayfaState();
}

class _KampusSayfaState extends State<KampusSayfa> {
  final List<String> carouselImages = [
    'assets/images/yemek.png',
    'assets/images/kampus.png',
    'assets/images/Adsiz.png',
  ];

  var url = Uri.parse(
      'https://tf.selcuk.edu.tr/index.php?lang=tr&birim=033&page=duyuru');
  var data = '';

  String content = '';
  List<String> announcements = [];

  @override
  void initState() {
    super.initState();
    getData();
    _fetchEtkinlik();
  }

  Future<void> getData() async {
    var res = await http.get(url);

    final body = res.body;
    final document = parser.parse(body);
    var icerikTd = document.getElementById("icerik_td");
    if (icerikTd != null) {
      var secondDiv = icerikTd.querySelector("div:nth-child(1)");
      if (secondDiv != null) {
        setState(() {
          content = secondDiv.text;
          announcements =
              content.split('\n'); // announcements listesini güncellemesi
        });
      }
    }
  }

  Future<void> _refreshData() async {
    await getData();
    await _fetchEtkinlik();
  }

  List<Etkinlik> etkinlik = [];

  Future<void> _fetchEtkinlik() async {
    final List<Etkinlik>? fetchedEtkinlik = await KampusService.getEtkinlik();
    setState(() {
      etkinlik = fetchedEtkinlik ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0XFFBA68C8), Color(0XFF9575CD)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0XFF1565C0), Color(0XFF6A1B9A)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0XFFF3E5F5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {
                                if (ZoomDrawer.of(context)!.isOpen()) {
                                  ZoomDrawer.of(context)!.close();
                                } else {
                                  ZoomDrawer.of(context)!.open();
                                }
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.blueAccent,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/kampus.png',
                                width: MediaQuery.of(context).size.width / 3,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0XFFF3E5F5),
                                borderRadius: BorderRadius.circular(15)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Profil()));
                              },
                              icon: const Icon(
                                Icons.person,
                                color: Colors.purple,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                              aspectRatio: 16 / 7,
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
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(
                            'Son Duyurular',
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                        child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 12),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 10,
                                        ),
                                        child: Text(
                                          announcements[index],
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 10,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ), // Çekilen verilerin yazılan kısmı
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Son Etkinlikler',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 1,
                        child: etkinlik.isEmpty
                            ? Center(
                                child: Text('Gerekli Bilgiler Yok'),
                              )
                            : ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: etkinlik.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: EtkinliklerTasarim(
                                      subtitle: etkinlik[index]
                                          .etkinlikAdi
                                          .toString(),
                                      image: const AssetImage(
                                          'assets/images/deneme.png'),
                                      label: etkinlik[index]
                                          .etkinlikYeri
                                          .toString(),
                                      time: etkinlik[index]
                                          .etkinlikSaat
                                          .toString(),
                                      onTap: () {},
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
