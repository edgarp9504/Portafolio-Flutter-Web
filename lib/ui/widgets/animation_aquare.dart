import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationCircleCustom extends AnimatedWidget {
  const AnimationCircleCustom({
    this.width = 200,
    this.height = 200,
    this.colorContainer = Colors.blue,
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);
  final Color colorContainer;
  final double width;
  final double height;

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 1.0 * math.pi,
      //alignment: Alignment.topLeft,
      //origin: offset,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 200.0,
        height: 200.0,
        color: colorContainer,
        child: const Center(
            child: Text('Mouse Over',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
