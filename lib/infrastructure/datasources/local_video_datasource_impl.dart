import 'package:tiktok/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/infrastructure/models/local_video_model.dart';
import 'package:tiktok/shared/data/local_video_posts.dart';

class LocalVideoDataSource implements VideoPostDataSource{
  @override
  Future<List<VideoPost>> getTredingVideosByUser(String userID) {
    throw UnimplementedError();
  }


  @override
  Future<List<VideoPost>> getTredingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2)); // simular un delay de 2 segundos
    
    
     final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    
    return newVideos;

  }
  
  

}