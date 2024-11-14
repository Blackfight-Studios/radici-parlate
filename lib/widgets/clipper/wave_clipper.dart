import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double waveHeight = size.height*0.10; // Height
    double waveWidth = size.width / 3; // 3 wave

    path.lineTo(0, 0);
    path.lineTo(0, size.height - waveHeight);

    for (int i = 0; i < 3; i++) {
      double x = waveWidth * i;
      double y = size.height - waveHeight;
      path.quadraticBezierTo(
        x + waveWidth / 2,
        y + waveHeight,
        x + waveWidth,
        y,
      );
    }

    path.lineTo(size.width, size.height - waveHeight);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}