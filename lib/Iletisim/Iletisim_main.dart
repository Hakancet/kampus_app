import 'package:flutter/material.dart';
import 'package:kampusapp/Iletisim/IletisimTasarim.dart';

class Iletisim_main extends StatefulWidget {
  const Iletisim_main({Key? key}) : super(key: key);

  @override
  State<Iletisim_main> createState() => _Iletisim_mainState();
}

class _Iletisim_mainState extends State<Iletisim_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFFFFEE58),
        centerTitle: true,
        title: Image.asset('assets/images/iletisim.png', fit: BoxFit.cover, width: MediaQuery.of(context).size.width/2.4, height: MediaQuery.of(context).size.height/10,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                    SizedBox(
                      width: 10,
                    ),
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                    SizedBox(
                      width: 10,
                    ),
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                    SizedBox(
                      width: 10,
                    ),
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                    SizedBox(
                      width: 10,
                    ),
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
                    SizedBox(
                      width: 10,
                    ),
                    IletisimTasarim(subtitle: 'İletisim Kutusu', image: AssetImage(''), label: 'Teknoloji Fakültesi', onTap:(){}),
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
