import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';


AppBar CustomAppBar(VoidCallback ontap) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading:Container(
        height: 39,
        width: 39,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff09FBD3),
              Colors.grey,
            ],
          ),
        ),
        child: GestureDetector(
          onTap: (){ontap;},
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(Assets.assetsIconsArrowLeft),
              ),
            ),
          ),
        ),
      ),
      title: const Text(
        'Choose Seats',
        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),
      ),
      
    );
  }