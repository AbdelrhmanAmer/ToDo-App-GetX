import 'package:flutter/material.dart';

class BezierClipper extends CustomClipper<Path> {
@override
Path getClip(Size size) {
  Path path = Path();
  
  // Move to the top-left corner
  path.moveTo(0, 0);
  
  // Cubic Bezier curve
  path.cubicTo(
    size.width / 3,
    size.height * 0.15,
    2 * size.width / 3,
    size.height * 0.15,
    size.width,
    0,
  );

  // Vertical line to the bottom-right corner
  path.lineTo(size.width, size.height);

  // Cubic Bezier curve for the bottom part
  path.cubicTo(
    2 * size.width / 3,
    size.height * 0.7,
    size.width / 3,
    size.height * 0.7,
    0,
    size.height,
  );

  // Close the path
  path.close();

  return path;
}


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
