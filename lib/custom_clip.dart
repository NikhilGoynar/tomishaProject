import 'package:flutter/material.dart';

class waveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 6, height - 25, width / 3, height - 10);
    // path.lineTo(width, height);
    path.quadraticBezierTo(
        width - (width / 3.65), height, width, height - (height / 6));
    path.lineTo(width, 0);
    path.quadraticBezierTo(width - (width / 6), -2, width - (width / 3), 22);
    path.quadraticBezierTo(width / 3, 35, 0, -16);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
