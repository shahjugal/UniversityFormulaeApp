import 'package:flutter/material.dart';
import 'Pages/FormulaPage.dart';
import 'Pages/LoginUI.dart';
import 'Pages/RegisterUI.dart';
import 'Pages/FormulaListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormulaListPage(),
    );
  }
}
