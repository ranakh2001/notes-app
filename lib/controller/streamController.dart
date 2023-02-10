// ignore_for_file: file_names

import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/styleController.dart';
import 'package:flutter_application_1/view/homeScreen.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class StreamController extends GetxController {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection("notes");
  TextEditingController titelController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  String date = DateTime.now().toString();
  StyleController styleController = Get.find();

  void saveNote() async {
    int color_id = Random().nextInt(styleController.cardsColor.length);
    notes.add({
      "note_titel": titelController.text,
      "creation_date": date,
      "note_cotent": contentController.text,
      "color_id": color_id
    }).then((value) {
      print(value.id);
      Get.back();
    }).catchError((error) => print("failed to add new note because of $error"));
  }
}
