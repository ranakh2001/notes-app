// ignore_for_file: file_names, must_be_immutable

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/styleController.dart';
import 'package:flutter_application_1/view/noteCardWidget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  StyleController styleController = Get.put(StyleController());
  StreamController streamController = Get.put(StreamController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styleController.mainColor,
      appBar: AppBar(
        title: Text(
          "Notes App",
          style: GoogleFonts.roboto(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: styleController.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You'r recent notes",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("notes")
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      );
                    }
                    if (snapshot.hasData) {
                      return GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          children: snapshot.data!.docs
                              .map((note) => noteCard(() {}, note))
                              .toList());
                    } else {
                      return Text(
                        "Ther's no notes",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      );
                    }
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Add Note"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
