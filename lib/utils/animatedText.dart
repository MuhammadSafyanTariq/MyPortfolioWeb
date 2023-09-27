import 'package:flutter/material.dart';

class AnimateTextRepeatedly extends StatefulWidget {
  final List<String> words;
  final Color color;
  final int size;

  const AnimateTextRepeatedly(
      {super.key,
      required this.words,
      required this.color,
      required this.size});
  @override
  _AnimateTextRepeatedlyState createState() => _AnimateTextRepeatedlyState();
}

class _AnimateTextRepeatedlyState extends State<AnimateTextRepeatedly>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  String _text = '';
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _startAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.forward(from: 0.0).whenComplete(() {
      setState(() {
        if (_currentIndex < widget.words.length - 1) {
          _currentIndex++;
        } else {
          _currentIndex = 0;
        }
        _text = widget.words[_currentIndex];
        _animationController.reset();
        _startAnimation();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Text(
          _text.substring(
              0, (_animationController.value * _text.length).floor()),
          style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}

class AnimatedTextOnce extends StatefulWidget {
  final List<String> words;
  final Color color;
  final double size;

  const AnimatedTextOnce({
    super.key,
    required this.words,
    required this.color,
    required this.size,
  });
  @override
  _AnimatedTextOnceState createState() => _AnimatedTextOnceState();
}

class _AnimatedTextOnceState extends State<AnimatedTextOnce>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  String _text = '';
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _startAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.forward(from: 0.0).whenComplete(() {
      setState(() {
        if (_currentIndex < widget.words.length - 1) {
          _currentIndex++;
          _text = widget.words[_currentIndex];
          _animationController.reset();
          _startAnimation();
        } else {
          // Animation completed, do something
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Text(
          _text.substring(
              0, (_animationController.value * _text.length).floor()),
          style: TextStyle(
              fontSize: widget.size,
              //  fontWeight: FontWeight.bold,
              color: widget.color),
        );
      },
    );
  }
}
