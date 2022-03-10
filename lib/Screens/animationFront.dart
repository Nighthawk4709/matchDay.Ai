import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: true);
  late Animation<Offset> _animation =
      Tween(begin: Offset.zero, end: Offset(0, 0.08)).animate(_controller);
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,
        child: Container(
          width: 300,
          height: 300,
          child: Image.asset(
            "assets/image/d.png",
          ),
        ));
  }

  @override
  void dispose() {
    _animation.isCompleted;

    _controller.dispose();
    super.dispose();
  }
}
