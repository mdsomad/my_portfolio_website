class LiveAppsData {
  final String app_name,play_store_Link,frameworkName,logo;

  LiveAppsData( {
    required this.app_name,
    required this.play_store_Link,
    required this.frameworkName,
    required this.logo,

  });
}

List<LiveAppsData> LiveAppsDataList = [
  LiveAppsData(
    app_name: "Your Notes",
    play_store_Link:"https://play.google.com/store/apps/details?id=com.yournotes.neon",
    frameworkName: "Experience seamless note-taking with Your Notes, the ultimate tool for capturing your thoughts,\n ideas, and to-do lists effortlessly. Whether you're in a meeting, brainstorming,\n or just need to jot down a reminder, Your Notes is designed to be your go-to companion.",
    logo: "assets/images/Your_note_ap_icon.svg",
   
  ),
  LiveAppsData(
    app_name: "Social Wallpaper",
    play_store_Link:"https://play.google.com/store/apps/details?id=com.social.wallpaper",
    frameworkName: "Social Wallpaper: A dynamic platform where art and technology converge.\n Explore a vibrant community of artists and enthusiasts, sharing and discovering unique wallpapers.\n Personalize your device with a diverse range of user-generated creations,\n from stunning illustrations to captivating photography. Join the creative movement and give your screen a unique flair with Social Wallpaper.",
    logo: "assets/images/attachment_92683319-depositphotos-bgremover2222.svg",
   
  ),

];