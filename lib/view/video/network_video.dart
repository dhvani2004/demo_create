import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NetworkVideo extends StatefulWidget {
  const NetworkVideo({super.key});

  @override
  State<NetworkVideo> createState() => _NetworkVideoState();
}

class _NetworkVideoState extends State<NetworkVideo> {
  VideoPlayerController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _playNetworkVideo() {
    _controller = VideoPlayerController.network(
        'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4')
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
        title: Text("NetWork Video"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _playNetworkVideo,
              child: Text('Play NetWork Video'),
            ),
          ),
          if (_controller != null && _controller!.value.isInitialized)
            Container(
              height: 600,
              width: 500,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _controller?.value.isPlaying ?? false
                            ? _controller?.pause()
                            : _controller?.play();
                      });
                    },
                    child: AnimatedOpacity(
                      opacity: _controller!.value.isPlaying ? 0.0 : 1.0,
                      duration: Duration(milliseconds: 200),
                      child: Icon(
                        _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        size: 80.0,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller?.value.isPlaying ?? false
                ? _controller?.pause()
                : _controller?.play();
          });
        },
        child: Icon(
          _controller?.value.isPlaying ?? false ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
