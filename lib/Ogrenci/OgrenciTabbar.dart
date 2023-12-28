import 'package:flutter/material.dart';
import 'package:kampusapp/Ogrenci/Ogrenci_dahafazla.dart';
import 'package:kampusapp/Ogrenci/Ogrenci_home.dart';
import 'package:kampusapp/Ogrenci/Ogrenci_isler.dart';

class Ogrenci_tabbar extends StatefulWidget {
  const Ogrenci_tabbar({Key? key}) : super(key: key);

  @override
  State<Ogrenci_tabbar> createState() => _Ogrenci_tabbarState();
}

class _Ogrenci_tabbarState extends State<Ogrenci_tabbar> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white10,
          currentIndex: select,
          onTap: (index) {
            setState(() {
              select = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: select == 0 ? Colors.blue[400] : Colors.grey,
              ),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                size: 30,
                color: select == 1 ? Colors.blue[400] : Colors.grey,
              ),
              label: 'Öğrenci İşleri',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted,
                size: 30,
                color: select == 2 ? Colors.blue[400] : Colors.grey,
              ),
              label: 'Daha Fazla',
            ),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue[400],
          elevation: 50,
        ),
      ),
      body: Stack(
        children: [
          renderView(
            0,
            const Ogrenci_home(),
          ),
          renderView(
            1,
            const Ogrenci_isler(),
          ),
          renderView(
            2,
            const Ogrenci_dahafazla(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: select != tabIndex,
      child: Opacity(
        opacity: select == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
