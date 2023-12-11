 class LanguagesData {
  final String title, logo,percentageNumber;
  final double percentageProgress;

  LanguagesData({
    required this.title,
    required this.logo,
    required this.percentageNumber,
    required this.percentageProgress,
  });
}

List LanguagesDataList = [
  LanguagesData(
    logo: "assets/images/dart_con.svg",
    title: "Dart",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  LanguagesData(
    logo: "assets/images/javascript.svg",
    title: "Javascript",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  LanguagesData(
    logo: "assets/images/typescript.svg",
    title: "Typescript",
    percentageNumber: "40%",
    percentageProgress: 0.4
  ),
  LanguagesData(
    logo: "assets/images/C_sharp.svg",
    title: "C Sharp",
    percentageNumber: "70%",
    percentageProgress: 0.7
  ),
  LanguagesData(
    logo: "assets/images/python.svg",
    title: "python",
    percentageNumber: "50%",
    percentageProgress: 0.5
  ),

  LanguagesData(
    logo: "assets/images/html.svg",
    title: "HTML",
    percentageNumber: "70%",
    percentageProgress: 0.7
  ),
  LanguagesData(
    logo: "assets/images/css.svg",
    title: "CSS",
    percentageNumber: "60%",
    percentageProgress: 0.6
  ),


];