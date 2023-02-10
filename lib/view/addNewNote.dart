// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/streamController.dart';
import 'package:flutter_application_1/controller/styleController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewNote extends StatelessWidget {
  AddNewNote({super.key});
  StyleController styleController = Get.find();
  StreamController sc = Get.put(StreamController());

  @override
  Widget build(BuildContext context) {
    int color_id = Random().nextInt(styleController.cardsColor.length);
    return Scaffold(
      backgroundColor: styleController.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: styleController.cardsColor[color_id],
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
          "Add new note",
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
            TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Note titel"),
              controller: sc.titelController,
              style: StyleController.mainTitle,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              sc.date,
              style: StyleController.dateTitle,
            ),
            const SizedBox(
              height: 28.0,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Note content"),
              controller: sc.contentController,
              style: StyleController.mainContent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: styleController.accentColor,
        onPressed: () {
          sc.saveNote();
        },
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
