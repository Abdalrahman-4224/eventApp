import 'package:flutter/material.dart';

class CustomGradientTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomGradientTabIndicatorPainter();
  }
}
class _CustomGradientTabIndicatorPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          
          Color(0xFFFF27F6),
          Color(0xFFFF27F6),
          Color(0xFFFF27F6),
          Color(0xFFFF27F6),
        ],
      ).createShader(Rect.fromLTWH(
        0.0,
        0.0,
        configuration.size!.width,
        configuration.size!.height,
      ))
      ..style = PaintingStyle.fill;

    const double width = 55.0;
    const double height = 22.0;

    final Offset indicatorOffset = Offset(
      offset.dx + (configuration.size!.width / 2) - (width / 2),
      configuration.size!.height - height,
    );

    final Rect rect = Rect.fromLTWH(
      indicatorOffset.dx,
      indicatorOffset.dy,
      width,
      height,
    );

    canvas.drawRect(rect, paint);
  }
}