import 'package:flutter/material.dart';

class AppGradient {
  // Example:
  // Container(
  //    decoration: BoxDecoration(
  //         gradient: AppGradient.linearGradient(const Color(0xFF151C26))))
  static Gradient linearGradient(Color color) {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: const [0.0, 0.9],
        colors: [color.withOpacity(1.0), color.withOpacity(0.0)]);
  }
}
