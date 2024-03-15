import 'package:flutter/material.dart';
import 'package:tiktok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // botones
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red)
      ],
    );
  }
}


class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  const _CustomIconButton({required this.value, required this.iconData, 
  iconColor  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value.toString(), style: const TextStyle(color: Colors.white)),
        IconButton(
          icon: Icon(iconData, color: color),
          onPressed: () {},
        ),
      ],
      
    );
  }
}