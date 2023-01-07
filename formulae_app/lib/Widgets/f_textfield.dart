import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class fTextBox extends StatefulWidget {
  fTextBox(this.hText, this.protectedText, {super.key});

  String? hText;
  bool protectedText = false;

  @override
  State<fTextBox> createState() =>
      // ignore: no_logic_in_create_state
      _fTextBoxState(hText: hText, hideText: protectedText);
}

// ignore: camel_case_types
class _fTextBoxState extends State<fTextBox> {
  String? hText;
  bool hideText = false;
  _fTextBoxState({this.hText, this.hideText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: Color.fromARGB(255, 177, 177, 177),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hText,
            border: InputBorder.none,
          ),
          cursorColor: Colors.grey,
          cursorWidth: 2.5,
          autocorrect: false,
          obscureText: hideText,
        ),
      ),
    );
  }
}
