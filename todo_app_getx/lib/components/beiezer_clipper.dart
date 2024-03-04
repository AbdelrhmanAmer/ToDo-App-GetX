import 'package:flutter/material.dart';

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
     path.moveTo(0, size.height / 2);

    path.quadraticBezierTo(size.width / 6, size.height * 0.4, size.width / 3, size.height / 2);
    path.quadraticBezierTo(size.width / 2, size.height * 0.6, 2 * size.width / 3, size.height / 2);
    path.quadraticBezierTo(5 * size.width / 6, size.height * 0.4, size.width, size.height / 2);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
