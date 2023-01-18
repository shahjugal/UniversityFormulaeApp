// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'TagCell.dart';

class f_formulaCell extends StatelessWidget {
  List<String> tags;
  String name;
  f_formulaCell(this.name, this.tags, {super.key}) {}

  List<Widget> tagCells = [];

  void setUpWidget() {
    for (var val in tags) {
      tagCells.add(f_tagCell(val));
      tagCells.add(SizedBox(
        width: 10,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    setUpWidget();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  0, // Move to right 5  horizontally
                  2.0, // Move to bottom 5 Vertically
                ),
              )
            ],
            color: Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color.fromARGB(255, 206, 206, 206),
            )),
        height: 100,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: tagCells,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
