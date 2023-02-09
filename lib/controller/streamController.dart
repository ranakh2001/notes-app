// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/state_manager.dart';

class StreamController extends GetxController {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection("notes");
}
