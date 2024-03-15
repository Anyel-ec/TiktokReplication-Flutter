import 'package:flutter/material.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/presentation/widget/shared/video_buttons.dart';
class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical, 
      itemBuilder: (BuildContext context, int index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            // botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)),

          ],
        );
       },
    );
  }
}