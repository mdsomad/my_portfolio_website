class ExtraData {
  final String title, logo,percentageNumber;
  final double percentageProgress;

  ExtraData({
    required this.title,
    required this.logo,
    required this.percentageNumber,
    required this.percentageProgress,
  });
}

List<ExtraData> ExtraDataList = [
  ExtraData(
    logo: "assets/images/git_bash.svg",
    title: "git",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  ExtraData(
    logo: "assets/images/github.svg",
    title: "GitHub",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  ExtraData(
    logo: "assets/images/postman-icon-svgrepo-com.svg",
    title: "Postman",
    percentageNumber: "80%",
    percentageProgress: 0.8
  ),
  ExtraData(
    logo: "assets/images/icons8-blender.svg",
    title: "Blender",
    percentageNumber: "80%",
    percentageProgress: 0.8
  ),



];