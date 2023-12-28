import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:kampusapp/Kampus/KampusAnasayfa.dart';
import 'package:kampusapp/Kampus/ZoomMenu.dart';

class ZoomPage extends StatefulWidget {
  const ZoomPage({Key? key}) : super(key: key);

  @override
  State<ZoomPage> createState() => _ZoomPageState();
}

class _ZoomPageState extends State<ZoomPage> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0XFF1565C0), Color(0XFF6A1B9A)],
        ),
      ),
      child: ZoomDrawer(
        controller: zoomDrawerController,
        menuScreen: const ZoomMenu(),
        mainScreen: const KampusSayfa(),
        showShadow: true,
        style: DrawerStyle.defaultStyle,
        angle: -20,
        isRtl: false,
      ),
    );
  }
}
