import 'package:flutter/material.dart';

class AppGradient {
  static linearGradient(Color color) {
    LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: const [
          0.0,
          0.9
        ],
        colors: [
          color.withOpacity(1.0),
          color.withOpacity(0.0)
        ]);
  }
}
