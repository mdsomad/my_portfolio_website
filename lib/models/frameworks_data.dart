class FrameworksData {
  final String title, logo,percentageNumber;
  final double percentageProgress;

  FrameworksData({
    required this.title,
    required this.logo,
    required this.percentageNumber,
    required this.percentageProgress,
  });
}

List<FrameworksData> FrameworksDataList = [
  FrameworksData(
    logo: "assets/images/flutter.svg",
    title: "Flutter",
    percentageNumber: "90%",
    percentageProgress: 0.9
  ),
  FrameworksData(
    logo: "assets/images/react.svg",
    title: "React Native",
    percentageNumber: "50%",
    percentageProgress: 0.5
  ),
  FrameworksData(
    logo: "assets/images/react.svg",
    title: "React.js",
    percentageNumber: "50%",
    percentageProgress: 0.5
  ),
  FrameworksData(
    logo: "assets/images/nextjs-icon-svgrepo-com.svg",
    title: "Next.js",
    percentageNumber: "50%",
    percentageProgress: 0.5
  ),



];