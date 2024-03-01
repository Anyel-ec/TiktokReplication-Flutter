import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiktok/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(color: Colors.blue),
        Container (color: Colors.green),
        Container (color: Colors.yellow),
        Container(color: Colors.red)
      ],
    );
  }
}