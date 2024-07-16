  import 'package:flutter/material.dart';

Padding FadedDivider(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 2,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                        
                          colors: [
                      Colors.transparent,
                      Color(0xffA543BA),
                      Color(0xffA543BA),
                      Color(0xffA543BA),
                      Colors.transparent
                    ])),
                  ),
                );
  }