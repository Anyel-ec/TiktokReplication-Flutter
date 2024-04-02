import 'package:tiktok/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  // la funcion getTredingVideosByUser recibe un string userID y retorna una lista de VideoPost
  Future<List<VideoPost>> getTredingVideosByUser(String userID);

  // la funcion getTredingVideosByPage recibe un entero page y retorna una lista de VideoPost
  Future<List<VideoPost>> getTredingVideosByPage(int page);
 
}