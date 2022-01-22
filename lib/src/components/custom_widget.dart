import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

///
/// https://github.com/flutter-devs/flutter_shimmer_animation_effect/blob/master/lib/custom_widget.dart
///
///  Widget buildShimmer() => ListTile(
///      leading: CustomWidget.circular(height: 64, width: 64),
///      title: Align(
///        alignment: Alignment.centerLeft,
///        child: CustomWidget.rectangular(
///          height: 16,
///          width: MediaQuery.of(context).size.width * 0.3,
///        ),
///      ),
///      subtitle: CustomWidget.rectangular(height: 14),
///    );
///
class CustomWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const CustomWidget.rectangular(
      {this.width = double.infinity, required this.height})
      : shapeBorder = const RoundedRectangleBorder();

  const CustomWidget.circular(
      {this.width = double.infinity,
      required this.height,
      this.shapeBorder = const CircleBorder()});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.red,
        highlightColor: Colors.grey[300]!,
        period: const Duration(seconds: 2),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Colors.grey[400]!,
            shape: shapeBorder,
          ),
        ),
      );
}
