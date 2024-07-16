import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomPaintWidget extends StatelessWidget {
  final double width;

  const CustomPaintWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width * 0.6828644501278772).toDouble()),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6077033, size.height * 0.001196015);
    path_0.lineTo(size.width * 0.08123657, size.height * 0.001196015);
    path_0.cubicTo(size.width * 0.03673990, size.height * 0.001196015, size.width * 0.0006681074, size.height * 0.05402022, size.width * 0.0006681074, size.height * 0.1191824);
    path_0.lineTo(size.width * 0.0006681074, size.height * 0.8813708);
    path_0.cubicTo(size.width * 0.0006681074, size.height * 0.9465318, size.width * 0.03673990, size.height * 0.9993558, size.width * 0.08123683, size.height * 0.9993558);
    path_0.lineTo(size.width * 0.9175422, size.height * 0.9993558);
    path_0.cubicTo(size.width * 0.9620384, size.height * 0.9993558, size.width * 0.9981100, size.height * 0.9465318, size.width * 0.9981100, size.height * 0.8813708);
    path_0.lineTo(size.width * 0.9981100, size.height * 0.3126790);
    path_0.cubicTo(size.width * 0.9981100, size.height * 0.2475172, size.width * 0.9620384, size.height * 0.1946929, size.width * 0.9175422, size.height * 0.1946929);
    path_0.lineTo(size.width * 0.7761944, size.height * 0.1946929);
    path_0.cubicTo(size.width * 0.7470537, size.height * 0.1946929, size.width * 0.7201841, size.height * 0.1716498, size.width * 0.7059258, size.height * 0.1344318);
    path_0.lineTo(size.width * 0.6779719, size.height * 0.06145693);
    path_0.cubicTo(size.width * 0.6637136, size.height * 0.02423925, size.width * 0.6368440, size.height * 0.001196015, size.width * 0.6077033, size.height * 0.001196015);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
      Offset(0, 0), // Start point (top-center)
      Offset(0, size.height), // End point (bottom-center)
      [
        Color(0xffE85EFF).withOpacity(1), // Start color
        Color(0xff561976).withOpacity(1) // End color
      ],
      [0.0, 1.0], // Color stops (0% to 100%)
    );
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}