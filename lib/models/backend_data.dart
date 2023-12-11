class BackendData {
  final String title, logo,percentageNumber;
  final double percentageProgress;

  BackendData({
    required this.title,
    required this.logo,
    required this.percentageNumber,
    required this.percentageProgress,
  });
}

List<BackendData> BackendDataList = [
  BackendData(
    logo: "assets/images/node-js.svg",
    title: "Express.js",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  BackendData(
    logo: "assets/images/mongodb.svg",
    title: "MongoDB",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  BackendData(
    logo: "assets/images/firebase.svg",
    title: "Firebase",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  BackendData(
    logo: "assets/images/nestjs-seeklogo.com.svg",
    title: "Nest.js",
    percentageNumber: "20%",
    percentageProgress: 0.2
  ),



];