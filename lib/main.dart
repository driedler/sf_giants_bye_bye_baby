import 'package:flutter/material.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SF Giants Bye Bye Baby!',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        iconTheme: const IconThemeData(color: Colors.orange),
        backgroundColor: Colors.black,
      ),
      home: const VideoPlayer(),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final _controller = YoutubePlayerController(
    initialVideoId: 's_jopBXcbxk',
    params: const YoutubePlayerParams(
      showControls: true,
      autoPlay: true,
      loop: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: YoutubePlayerIFrame(
          controller: _controller,
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
