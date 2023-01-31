import 'package:flutter/material.dart';

import '../Widgets/FormulaCell.dart';

class FormulaListPage extends StatefulWidget {
  const FormulaListPage({super.key});

  @override
  State<FormulaListPage> createState() => _FormulaListPageState();
}

class _FormulaListPageState extends State<FormulaListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulas"),
      ),
      body: Center(
          child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          f_formulaCell(
            "Charle's Law",
            ["Chemical Engineering", "Fluid Chemistry"],
            1,
          ),
          SizedBox(
            height: 10,
          ),
          f_formulaCell(
            "Gopinathan's Radiation Equation",
            ["Mechanical Engineering", "Solar Thermal Engineering"],
            2,
          ),
          SizedBox(
            height: 10,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          f_formulaCell(
            "Saint Venant's Equation",
            [
              "Mechanical Engineering",
              "Design and Manufacuring",
              "Strength of Material"
            ],
            3,
          ),
          SizedBox(
            height: 10,
          ),
          f_formulaCell(
            "Chineese Remainder Theorem",
            [
              "Computer Science and Engineering",
              "Advanced Programming",
              "Discrete Mathematics"
            ],
            4,
          ),
          SizedBox(
            height: 10,
          ),
          f_formulaCell(
            "Fermat's Little Theorem",
            [
              "Computer Science",
              "Computer Science Engineering",
              "Discrete Mathematics",
              "Advanced Programming"
            ],
            1,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
