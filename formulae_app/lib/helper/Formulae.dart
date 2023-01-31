// Objects of this class holds the informations regarding particular formulae.

class Formulae {
  int? id;
  String? name;
  String? description;
  String? latexString;

  List<String>? applications;
  List<String>? imageLinks;
  List<String>? ytLinks;
  List<String>? driveLinks;
  List<String>? researchLinks;
  List<String>? relatedCourses;
  List<String>? tags;

  Formulae(
      {this.id,
      this.name,
      this.description,
      this.latexString,
      this.applications,
      this.imageLinks,
      this.ytLinks,
      this.driveLinks,
      this.researchLinks,
      this.relatedCourses,
      this.tags});
}
