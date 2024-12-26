import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class FileVideo extends StatefulWidget {
  const FileVideo({super.key});

  @override
  State<FileVideo> createState() => _FileVideoState();
}

class _FileVideoState extends State<FileVideo> {
  VideoPlayerController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Future<void> _pickVideoFromFile() async {
    final picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      _controller = VideoPlayerController.file(File(video.path))
        ..initialize().then((_) {
          setState(() {
            _controller!.play();
          });
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File Video"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _pickVideoFromFile,
              child: Text('Play File Video'),
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
