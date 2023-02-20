import 'package:flutter/material.dart';
import 'package:flutter_web_michio/responsive/desktop_body.dart';
import 'package:flutter_web_michio/responsive/mobile_body.dart';
import 'package:flutter_web_michio/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: ResponsiveLayout(
            mobileBody: MyMobileBody(), descktopBody: MyDesktopBody()));
  }
}
