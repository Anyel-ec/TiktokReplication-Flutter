class VideoPost {

  // atributos
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  // constructor
  VideoPost(
      {required this.caption, // required: obligatorio
      required this.videoUrl, // required: obligatorio
       this.likes = 0, // likes por defecto 0
       this.views = 0}); // views por defecto 0
}
