import 'package:flutter/material.dart';
import 'package:flutter_video_player/VideoPlayerWidget.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Video Player"),
      ),
      body: Container(
        child: VideoPlayerWidget(
          videoPlayerController:
              VideoPlayerController.asset("asset/typing.mp4"),
          autoPlay: true,
          looping: true,
        ),
      ),
    );
  }
}
