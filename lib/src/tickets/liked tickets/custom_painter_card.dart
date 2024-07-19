import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:liverpod_structure/utils/constants/assets.dart';

// The custom painter class
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.transparent; // Transparent background
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// The custom widget class
class LikedTicketWidget extends StatelessWidget {
  final double width;

  const LikedTicketWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(width, (width * 0.46533203125).toDouble()), // height calculated automatically
          painter: RPSCustomPainter(),
        ),
        Positioned.fill(
          child: Image.asset(
            Assets.assetsImagesImage82,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}