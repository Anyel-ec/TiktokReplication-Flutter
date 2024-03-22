import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/config/helpers/human_format.dart';
import 'package:tiktok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // botones
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red), 
        const SizedBox(height: 20),
        _CustomIconButton(value: video.views, iconData: Icons.comment),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline)),

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
        if (value > 0)
        Text(HumanFormat.numberFormat(value), style: const TextStyle(color: Colors.white)),
        IconButton(
          icon: Icon(iconData, color: color, size: 30,),
          onPressed: () {},
        ),
      ],
      
    );
  }
}