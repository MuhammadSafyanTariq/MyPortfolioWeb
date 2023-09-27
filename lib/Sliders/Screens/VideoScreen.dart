import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSlider extends StatefulWidget {
  final List<String> videoUrls;

  const VideoSlider({Key? key, required this.videoUrls}) : super(key: key);

  @override
  _VideoSliderState createState() => _VideoSliderState();
}

class _VideoSliderState extends State<VideoSlider> {
  late PageController _pageController;
  late VideoPlayerController _videoPlayerController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    _videoPlayerController =
        VideoPlayerController.network(widget.videoUrls[_currentIndex])
          ..initialize().then((_) {
            setState(() {
              _videoPlayerController.play();
            });
          });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.videoUrls.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
            _videoPlayerController.pause();
            _videoPlayerController =
                VideoPlayerController.network(widget.videoUrls[index])
                  ..initialize().then((_) {
                    setState(() {
                      _videoPlayerController.play();
                    });
                  });
          });
        },
        itemBuilder: (context, index) {
          return VideoPlayer(_videoPlayerController);
        },
      ),
    );
  }
}
