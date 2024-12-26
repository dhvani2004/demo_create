import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MultipleAssetVideo extends StatefulWidget {
  const MultipleAssetVideo({super.key});

  @override
  State<MultipleAssetVideo> createState() => _MultipleAssetVideoState();
}

class _MultipleAssetVideoState extends State<MultipleAssetVideo> {
  final List<VideoPlayerController> _controllers = [];
  final List<String> _videoPaths = [
    'assets/video/video.mp4',
    'assets/video/video2.mp4',
    'assets/video/video3.mp4',
    'assets/video/video4.mp4',
  ];

  final List<String> _photos = [
    "assets/images/n1.jfif",
    "assets/images/n2.jfif",
    "assets/images/n3.jfif",
    "assets/images/n4.jfif"
  ];

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayers();
  }

  Future<void> _initializeVideoPlayers() async {
    for (String path in _videoPaths) {
      VideoPlayerController controller = VideoPlayerController.asset(path);
      await controller.initialize();
      _controllers.add(controller);
    }
    setState(() {});
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _togglePlay(int index) {
    setState(() {
      if (_controllers[index].value.isPlaying) {
        _controllers[index].pause();
      } else {
        for (int i = 0; i < _controllers.length; i++) {
          if (i != index) {
            _controllers[i].pause();
          }
        }
        _controllers[index].play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            CarouselSlider(
              items: _photos.map((photo) {
                return Container(
                  margin: const EdgeInsets.all(11),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child: Image.asset(photo, fit: BoxFit.cover),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(height: 10),
            Text("Explore the Beatuy of Nature",style: AppTextTheme.bold.copyWith(color: Colors.black,fontSize: 20),),
            Expanded(
              child: _controllers.isNotEmpty
                  ? ListView.builder(
                itemCount: _controllers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _togglePlay(index),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AspectRatio(
                            aspectRatio: _controllers[index].value.aspectRatio,
                            child: VideoPlayer(_controllers[index]),
                          ),
                          AnimatedOpacity(
                            opacity: _controllers[index].value.isPlaying ? 0.0 : 1.0,
                            duration: const Duration(milliseconds: 200),
                            child: Icon(
                              _controllers[index].value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              size: 80.0,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
