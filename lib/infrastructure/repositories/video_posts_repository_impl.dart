


import 'package:tiktok/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDataSource videosDatasource;
  VideoPostsRepositoryImpl({required this.videosDatasource});
  @override
  Future<List<VideoPost>> getTredingVideosByPage(int page) {
    return videosDatasource.getTredingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTredingVideosByUser(String userID) {
    throw UnimplementedError();
  }
  
  
}