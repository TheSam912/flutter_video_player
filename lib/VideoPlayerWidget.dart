import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoPlay;
  const VideoPlayerWidget(
      {super.key,
      required this.videoPlayerController,
      required this.looping,
      required this.autoPlay});
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      looping: widget.autoPlay,
      autoPlay: widget.autoPlay,
      errorBuilder: (context, errorMessage) {
        return const Center(
          child: Text("ERROR !"),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chewie(controller: chewieController),
    );
  }
}
