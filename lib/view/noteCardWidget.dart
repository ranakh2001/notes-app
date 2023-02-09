import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/styleController.dart';
import 'package:get/get.dart';

StyleController styleController = Get.find();
Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: styleController.cardsColor[doc['color_id']],
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc['note_titel'],
            style: StyleController.mainTitle,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            doc['creation_date'],
            style: StyleController.dateTitle,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            doc['note_cotent'],
            style: StyleController.mainContent,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
  );
}
