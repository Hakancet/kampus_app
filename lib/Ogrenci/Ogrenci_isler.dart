import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Ogrenci/Api/IsyeriArticle.dart';
import 'package:kampusapp/Ogrenci/Api/IsyeriService.dart';
import 'package:kampusapp/Ogrenci/Api/IsTasarim.dart';
import 'package:kampusapp/Ogrenci/Burs/BursService.dart';
import 'package:kampusapp/Ogrenci/Burs/BursTasarim.dart';
import 'package:kampusapp/Ogrenci/Burs/bursArticles.dart';
import 'package:kampusapp/Ogrenci/Staj/StajArticles.dart';
import 'package:kampusapp/Ogrenci/Staj/StajService.dart';
import 'package:kampusapp/Ogrenci/Staj/StajTasarim.dart';

class Ogrenci_isler extends StatefulWidget {
  const Ogrenci_isler({Key? key}) : super(key: key);

  @override
  State<Ogrenci_isler> createState() => _Ogrenci_islerState();
}

class _Ogrenci_islerState extends State<Ogrenci_isler> {
  List<Local> local = [];
  List<burs> Burs = [];
  List<Staj> staj = [];

  @override
  void initState() {
    super.initState();
    _fetchLocal();
    _fetchBurs();
    _fetchStaj();
  }

  Future<void> _fetchLocal() async {
    final List<Local>? fetchedLocalData = await LocalService.getLocal();

    setState(() {
      local = fetchedLocalData ?? [];
    });
  }

  Future<void> _fetchBurs() async {
    final List<burs>? fetchedBursData = await BursService.getBurs();

    setState(() {
      Burs = fetchedBursData ?? [];
    });
  }

  Future<void> _fetchStaj() async {
    List<Staj>? fetchedStajData = await StajService.getStaj();

    setState(() {
      staj = fetchedStajData ?? [];
    });
  }

  Future<void> _refreshData() async {
    await _fetchLocal();
    await _fetchBurs();
    await _fetchStaj();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: Colors.white,
          backgroundColor: const Color(0XFF90CAF9),
          centerTitle: true,
          title: Text(
            'Öğrenci İşleri',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Container(
              color: Colors.grey[100],
              child: const TabBar(
                labelColor: Colors.lightBlue,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: 'Stajlar'),
                  Tab(text: 'İş İlanı'),
                  Tab(text: 'Burslar'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            RefreshIndicator(
              onRefresh: _fetchBurs,
              child: Center(
                  child: staj.isEmpty
                      ? const Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.notification_important,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'Henüz bir bildirim yok',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: staj.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                StajTasarim(
                                    yer: staj[index].stajYer.toString(),
                                    adres: staj[index].stajLocal.toString(),
                                    numara: staj[index].stajIletisim.toString())
                              ],
                            );
                          })),
            ),
            RefreshIndicator(
              onRefresh: _refreshData,
              child: Center(
                child: local.isEmpty
                    ? Text('Bildirim Yok',
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                    : ListView.builder(
                        itemCount: local.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              IsTasarim(
                                  yer: local[index].isYeri.toString(),
                                  adres: local[index].isLocal.toString(),
                                  numara: local[index].isNumara.toString())
                            ],
                          );
                        },
                      ),
              ),
            ),
            RefreshIndicator(
              onRefresh: _fetchBurs,
              child: Center(
                child: Burs.isEmpty
                    ? const Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.notification_important,
                              size: 100,
                              color: Colors.grey,
                            ),
                            Text(
                              'Henüz bir bildirim yok',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: Burs.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              BursTasarim(
                                  kurum: Burs[index].bursYeri.toString(),
                                  ay: Burs[index].bursAy.toString(),
                                  miktar: Burs[index].bursMiktar.toString()),
                            ],
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
