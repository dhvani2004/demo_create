import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AssestVideo extends StatefulWidget {
  const AssestVideo({super.key});

  @override
  State<AssestVideo> createState() => _AssestVideoState();
}

class _AssestVideoState extends State<AssestVideo> {
  VideoPlayerController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _playAssetVideo() {
    _controller = VideoPlayerController.asset('assets/video/video.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller!.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Video"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _playAssetVideo,
              child: Text('Play Asset Video'),
            ),
          ),
          if (_controller != null && _controller!.value.isInitialized)
            Container(
              margin: EdgeInsets.only(top: 20),
              child: AspectRatio(
                aspectRatio: _controller!.value.aspectRatio,
                child: VideoPlayer(_controller!),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller != null) {
              _controller!.value.isPlaying ? _controller?.pause() : _controller?.play();
            }
          });
        },
        child: Icon(
          _controller?.value.isPlaying ?? false ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
