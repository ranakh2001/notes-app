// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleController extends GetxController {
  //main colors of the app
  Color bgColor = const Color(0xFFe2e2ff);
  Color mainColor = const Color(0xff000633);
  Color accentColor = const Color(0xff0065ff);


  // cards colors
  List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.pink.shade100,
    Colors.purple.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
  ];

  // text styles
  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18.0, fontWeight: FontWeight.bold);
  static TextStyle mainContent =
      GoogleFonts.nunito(fontSize: 16.0, fontWeight: FontWeight.normal);
  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 12.0, fontWeight: FontWeight.w500);
}
