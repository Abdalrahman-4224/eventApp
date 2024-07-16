import 'package:flutter/material.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

Stack paymentBackground(BuildContext context) {
    return Stack(
        children: [
          Container(
            child: Image.asset(
              Assets.assetsImagesBitmap,
              width: double.infinity,
            ),
          ),
          Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Colors.black,
                  Color.fromARGB(191, 0, 0, 0),
                  Colors.transparent
                ])),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1),
      ),
        ],
      );
  }