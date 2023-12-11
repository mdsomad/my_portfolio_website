class FrontendProjectsData {
  final String app_name,sourceCodeLink,frameworkName,logo;
  final List images;
  final bool isYouTube;

  FrontendProjectsData( {
    required this.app_name,
    required this.sourceCodeLink,
    required this.frameworkName,
    required this.logo,
    required this.images,
    required this.isYouTube,
  });
}

List<FrontendProjectsData> FrontendProjectsDataList = [
  FrontendProjectsData(
    app_name: "Socal Media",
    sourceCodeLink:"https://github.com/mdsomad/Social_Media_App_Frontend_in_Flutter.git",
    frameworkName: "Using Flutter",
    logo: "assets/images/flutter.svg",
    images: ["https://res.cloudinary.com/ddx68nuvc/image/upload/v1698161278/Portfolio%20Images/Screenshot_1690299576_zjxeon.png","https://res.cloudinary.com/ddx68nuvc/image/upload/v1698160918/Portfolio%20Images/Screenshot_1690472354_fdzhz4.png","https://res.cloudinary.com/ddx68nuvc/image/upload/v1698161147/Portfolio%20Images/Screenshot_1690198343_fvi95m.png","https://res.cloudinary.com/ddx68nuvc/image/upload/v1698162310/Portfolio%20Images/Screenshot_1690472735_lpficu.png"],
    isYouTube: true
  ),
  FrontendProjectsData(
    app_name: "Socal Media",
    sourceCodeLink:"https://github.com/mdsomad/Social_Media_App_Frontend_in_Flutter.git",
    frameworkName: "Using Flutter",
    logo: "assets/images/flutter.svg",
    images: ["https://res.cloudinary.com/ddx68nuvc/image/upload/v1698161278/Portfolio%20Images/Screenshot_1690299576_zjxeon.png","https://res.cloudinary.com/ddx68nuvc/image/upload/v1698160918/Portfolio%20Images/Screenshot_1690472354_fdzhz4.png","https://res.cloudinary.com/ddx68nuvc/image/upload/v1698161147/Portfolio%20Images/Screenshot_1690198343_fvi95m.png","https://res.cloudinary.com/ddx68nuvc/image/upload/v1698162310/Portfolio%20Images/Screenshot_1690472735_lpficu.png"],
    isYouTube: false
  ),



];