import 'package:flutter/material.dart';
import 'keepalive_widget.dart';

extension ListExtension on List<Widget> {
  List<Widget> keepAlives() {
    Widget _buildPage(Widget page) {
      return KeepAliveWidget(
        child: page,
      );
    }

    return map(_buildPage).toList();
  }
}
