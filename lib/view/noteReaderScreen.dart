// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/styleController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteReaderScreen extends StatelessWidget {
  NoteReaderScreen({required this.doc, super.key});
  QueryDocumentSnapshot doc;
  StyleController styleController = Get.find();

  @override
  Widget build(BuildContext context) {
    int colorId = doc['color_id'];
    return Scaffold(
      backgroundColor: styleController.cardsColor[colorId],
      appBar: AppBar(
        backgroundColor: styleController.cardsColor[colorId],
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          doc['note_titel'],
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc['note_titel'],
              style: StyleController.mainTitle,
            ),
            const SizedBox(
              height: 7.0,
            ),
            Text(
              doc['creation_date'],
              style: StyleController.dateTitle,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              doc['note_cotent'],
              style: StyleController.mainContent,
            )
          ],
        ),
      ),
    );
  }
}
