import 'package:flutter/material.dart';

class GradientNumberText extends StatelessWidget {
  final String text;
  

  const GradientNumberText({
    required this.text,
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          colors: [
            Color(0xffE85EFF),
            Color(0xff561976),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700).copyWith(color: Colors.white) ?? const TextStyle(color: Colors.white),
      ),
    );
  }
}