import 'package:flutter/material.dart';

// RaisedGradientButton(
//   child: Text(
//     'Button',
//     style: TextStyle(color: Colors.white),
//   ),
//   gradient: LinearGradient(
//     colors: <Color>[Colors.green, Colors.black],
//   ),
//   onPressed: (){
//     print('button clicked');
//   }
// ),

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final double radius;
  final Function() onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.radius = 48.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
