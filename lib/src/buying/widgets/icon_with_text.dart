
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

Padding iconWithText(String iconname,text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(39, 231, 94, 255),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(iconname),
                        ),
                      ),
                      
                    ),
                    smallText(text),
                  ],),
    );
  }