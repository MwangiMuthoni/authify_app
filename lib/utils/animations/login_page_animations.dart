import 'package:flutter/material.dart';

class EnterAnimation {
  EnterAnimation(this.controller) {
    circleSize = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOutBack),
    );
  }

  final AnimationController controller;
  late final Animation<double> circleSize;
}
