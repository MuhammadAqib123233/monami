import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    return content();
  }

  content() {
    return Container(
      width: 300,
      height: 150,
      child: VideoPlayer(_controller),
    );
  }
}
