import 'package:flutter/material.dart';
import 'package:liverpod_structure/utils/constants/sizes.dart';

GestureDetector BuyTicketButton(BuildContext context) {
    return GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Container(
                      height: 51.19,
                      width: 181,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff1828BD),
                            Color(0xffE85EFF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: ContextEx(context).height * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            color: Colors.black,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                 Color.fromARGB(89, 24, 40, 189),
                            Color.fromARGB(92, 231, 94, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
  }