// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class f_tagCell extends StatelessWidget {
  String textVal;
  f_tagCell(this.textVal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
        child: Text(
          style: TextStyle(
            fontSize: 12,
          ),
          textVal,
        ),
      ),
    );
  }
}
