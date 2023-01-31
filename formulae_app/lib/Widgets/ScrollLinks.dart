import 'package:flutter/material.dart';

class f_LinkScroller extends StatefulWidget {
  const f_LinkScroller({super.key});

  @override
  State<f_LinkScroller> createState() => _f_LinkScrollerState();
}

class _f_LinkScrollerState extends State<f_LinkScroller> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Links",
      ),
      Container(
        color: Colors.black,
        height: 150,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
