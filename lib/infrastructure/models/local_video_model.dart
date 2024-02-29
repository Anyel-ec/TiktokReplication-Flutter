import 'package:tiktok/domain/entities/video_post.dart';

class LocalVideoModel{
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });

  factory LocalVideoModel.fromMap(Map<String, dynamic> map){
    return LocalVideoModel(
      name: map['name'] ?? 'no existe nombre',
      videoUrl: map['videoUrl'] ?? 'no existe url',
      likes: map['likes'] ?? 0,
      views: map['views'] ?? 0
    );
  }

  VideoPost toVideoPostEntity(){
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views
    );
  }

}