class BackendProjectsData {
  final String project_name,sourceCodeLink,frameworkName,logo;

  BackendProjectsData( {
    required this.project_name,
    required this.sourceCodeLink,
    required this.frameworkName,
    required this.logo,

  });
}

List<BackendProjectsData> BackendProjectsDataList = [
  BackendProjectsData(
    project_name: "Socal Media",
    sourceCodeLink:"https://github.com/mdsomad/Social-media-backend-with-node-js",
    frameworkName: "Express JS",
    logo: "assets/images/node-js.svg",
   
  ),
  BackendProjectsData(
    project_name: "Ecommerce Backend",
    sourceCodeLink:"https://github.com/mdsomad/Ecommerce_Backend_2",
    frameworkName: "Express JS",
    logo: "assets/images/node-js.svg",
   
  ),



];