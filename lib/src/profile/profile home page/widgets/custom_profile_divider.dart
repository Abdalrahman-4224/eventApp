 import 'package:flutter/material.dart';

Padding customProfileDivider(double heights,widths) {
    return Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0),
            child: Container(
              height: heights,
              color: Color(0xff1D1E2D),
              width: widths,
            ),
          );
  }