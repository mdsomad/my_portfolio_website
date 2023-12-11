  class DesignData {
  final String title, logo,percentageNumber;
  final double percentageProgress;

  DesignData({
    required this.title,
    required this.logo,
    required this.percentageNumber,
    required this.percentageProgress,
  });
}

List<DesignData> DesignDataList = [
  DesignData(
    logo: "assets/images/figma.svg",
    title: "Figma",
    percentageNumber: "80%",
    percentageProgress: 0.8
  ),
  DesignData(
    logo: "assets/images/xd.svg",
    title: "Adobe.Xd",
    percentageNumber: "70%",
    percentageProgress: 0.7
  ),
  DesignData(
    logo: "assets/images/adobe-illustrator.svg",
    title: "illustrator",
    percentageNumber: "40%",
    percentageProgress: 0.4
  ),



];