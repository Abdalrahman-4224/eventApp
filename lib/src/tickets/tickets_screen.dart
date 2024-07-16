import 'package:flutter/material.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [

     Align(
      alignment: Alignment.bottomCenter,
       child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Color(0xff280D2A)
            
            
          ],begin: Alignment.bottomLeft,end: Alignment.centerRight)
        ),
       ),
     ),
          Image.asset(Assets.assetsImagesTicketsBackground),

    ],);
  }
}