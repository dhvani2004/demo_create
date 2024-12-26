import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoPickerDemo extends StatefulWidget {
  const VideoPickerDemo({super.key});

  @override
  State<VideoPickerDemo> createState() => _VideoPickerDemoState();
}

class _VideoPickerDemoState extends State<VideoPickerDemo> {
  XFile? _video;
  VideoPlayerController? _controller;

  Future<void> _pickVideoFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      setState(() {
        _video = video;
        _controller = VideoPlayerController.file(File(video.path))
          ..initialize().then((_) {
            setState(() {});
            _controller!.play();
          });
      });
    }
  }

  Future<void> _recordvideo() async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.camera);
    if(video != null){
      setState(() {
        _video = video;
        _controller = VideoPlayerController.file(File(video.path))
        ..initialize().then((_){
          setState(() {
            _controller!.play();
          });
        });
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: _pickVideoFromGallery,
            child: _video != null
                ? Container(
              width: Get.width,
              height: Get.height,
              child: VideoPlayer(_controller!),
            )
                : Container(
              height: 150,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  "Pick a video from gallery",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: _recordvideo,
            child: _video != null
                ? Container(
              width: Get.width,
              height: Get.height,
              child: VideoPlayer(_controller!),
            )
                : Container(
              height: 150,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  "Record a video",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
