import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

// ignore: non_constant_identifier_names
Opacity CircleAppbarButton(String assetsname, {int colorhex = 0xFF09FBD3}) {
  return Opacity(
    opacity: 0.7,
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(colorhex), Color(0xff4e4f75)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff4e4f75),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              assetsname,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  
            ),
          ),
        ),
      ),
    ),
  );
}
