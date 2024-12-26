import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MultiNetworkVideo extends StatefulWidget {
  const MultiNetworkVideo({Key? key}) : super(key: key);

  @override
  State<MultiNetworkVideo> createState() => _MultiNetworkVideoState();
}

class _MultiNetworkVideoState extends State<MultiNetworkVideo> {
  final List<String> _videoUrls = [
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
  ];

  List<VideoPlayerController>? _controllers; // Make this nullable
  int? _playingIndex; // Track the currently playing video index

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayers(); // Initialize video players
  }

  Future<void> _initializeVideoPlayers() async {
    _controllers = _videoUrls.map((url) => VideoPlayerController.network(url)).toList();

    // Initialize all video players
    await Future.wait(_controllers!.map((controller) => controller.initialize()));

    // Ensure setState is called to rebuild the widget with initialized controllers
    setState(() {});
  }

  @override
  void dispose() {
    // Dispose each controller if initialized
    _controllers?.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _togglePlay(int index) {
    setState(() {
      if (_playingIndex == index) {
        // If the same video is tapped, pause it
        _controllers![index].value.isPlaying ? _controllers![index].pause() : _controllers![index].play();
      } else {
        // Pause the currently playing video
        if (_playingIndex != null) {
          _controllers![_playingIndex!].pause();
        }
        // Play the selected video
        _controllers![index].play();
        _playingIndex = index; // Update the currently playing index
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Network Videos"),
      ),
      body: _controllers != null && _controllers!.isNotEmpty && _controllers![0].value.isInitialized
          ? ListView.builder(
        itemCount: _controllers!.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: _controllers![index].value.aspectRatio,
                      child: VideoPlayer(_controllers![index]),
                    ),
                    GestureDetector(
                      onTap: () => _togglePlay(index),
                      child: AnimatedOpacity(
                        opacity: _controllers![index].value.isPlaying ? 0.0 : 1.0,
                        duration: const Duration(milliseconds: 200),
                        child: Icon(
                          _controllers![index].value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 80.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      )
          : const Center(child: CircularProgressIndicator()), // Show loading indicator while initializing
    );
  }
}
