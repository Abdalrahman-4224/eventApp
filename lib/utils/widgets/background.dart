import 'dart:ui';

import 'package:flutter/material.dart';

Container BackGround() {
  return Container(
    width: 445,
    height: 400,
    child: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: ClipRRect(
            child: Container(
              height: 400,
              width: 400,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 400, sigmaY: 400),
                child: Container(
                  decoration: const ShapeDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color.fromARGB(51, 52, 96, 255),
                        Color.fromARGB(51, 52, 96, 255),
                        Color.fromARGB(51, 52, 96, 255),
                        Color.fromARGB(51, 52, 96, 255),
                        Color.fromARGB(51, 52, 96, 255),
                        
                        Colors.transparent
                      ],
                      stops: [0.1,0.1,0.1,0.1,0.1, 0.75],
                      center: Alignment.center,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 100,
          top: 70,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: 400,
              height: 400,
              decoration: const ShapeDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color.fromARGB(55, 254, 83, 186),
                    Color.fromARGB(55, 254, 83, 186),
                    Color.fromARGB(55, 254, 83, 186),
                    Color.fromARGB(55, 254, 83, 186),
                    Color.fromARGB(55, 254, 83, 186),
                 
                    Colors.transparent
                  ],
                  stops: [0.1, 0.1, 0.1,0.1,0.1, 0.75],
                  center: Alignment.center,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
