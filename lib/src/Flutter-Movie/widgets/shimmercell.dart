import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCell extends StatelessWidget {
  const ShimmerCell(this.width, this.height, this.borderRadius,
      {Key? key,
      this.margin = EdgeInsets.zero,
      this.baseColor,
      this.highlightColor})
      : super(key: key);

  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry margin;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    // final MediaQueryData _mediaQuery = MediaQuery.of(context);
    // final ThemeData _theme = _mediaQuery.platformBrightness == Brightness.light
    //     ? ThemeStyle.lightTheme
    //     : ThemeStyle.darkTheme;
    return Shimmer.fromColors(
      baseColor: baseColor ?? Theme.of(context).primaryColorDark,
      highlightColor: highlightColor ?? Theme.of(context).primaryColorLight,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.grey[200],
        ),
      ),
    );
  }
}
