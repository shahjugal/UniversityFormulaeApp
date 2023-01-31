import 'package:flutter/material.dart';
import 'package:formulae_app/Widgets/TagCell.dart';

import '../Widgets/ScrollLinks.dart';
import '../helper/Formulae.dart';

// ignore: must_be_immutable
class FormulaPage extends StatelessWidget {
  FormulaPage(this.id, {super.key});
  int id;
  // This object should be passed by value or quer-ied at runtime from server.
  Formulae formulae = Formulae(
    id: 1, //
    name: "Charles Law", //
    description: //
        "In a popular laboratory experiment, a fully inflated balloon is placed inside a container with liquid nitrogen (which is at a temperature of -196 ˚C), and we can observe that the balloon shrinks to about 1/1000th of its former size. Similarly, if we keep an inflated balloon in the fridge it too shrinks considerably. After this, if the balloon is carefully removed from the container or the fridge is allowed to slowly warm itself to room temperature, it will regain the size that it was as before; it was shrunk down due to the cooling of liquid nitrogen. This is one of the simplest experiments which can be performed to demonstrate the effects of temperature on gases",
    latexString: "LatexString", //
    applications: //
        [
      "Some applications of Charless law are: Expansion of metals (linear and volumetric thermal expansion) with increasing temperature Bakery applications (CO 2 expands at high temperatures and makes baking possible), etc What is Charles law application in real life?"
    ],
    tags: ["Chemistry", "Chemical Engineering", "State Chemistry"], //
    driveLinks: ["drive.google.com", "drive.google.com"],
    imageLinks: ["image.google.com", "image.google.com"],
    relatedCourses: ["ENR201", "ENR102"], //
    researchLinks: ["scholar.google.com", "scholar.google.com"],
    ytLinks: ["youtube.com", "youtube.com"],
  );

  List<Widget> tagCells = [];
  List<Widget> CourseCells = [];

  void setUpWidget() {
    for (var val in formulae.tags as List) {
      tagCells.add(f_tagCell(val));
      tagCells.add(SizedBox(
        width: 10,
      ));
    }

    for (var val in formulae.relatedCourses as List) {
      CourseCells.add(f_tagCell(val));
      CourseCells.add(SizedBox(
        width: 10,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    setUpWidget();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(formulae.name as String)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(formulae.description as String),
              SizedBox(
                height: 10,
              ),
              Text(
                formulae.latexString as String,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(formulae.applications.toString()),
              SizedBox(
                height: 20,
              ),
              f_LinkScroller(),
              SizedBox(
                height: 10,
              ),
              f_LinkScroller(),
              SizedBox(
                height: 10,
              ),
              f_LinkScroller(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: tagCells,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: CourseCells,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Formula id: " + id.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
