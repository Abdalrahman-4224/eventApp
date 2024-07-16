  import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

Container gradientBorderImage() {
    return Container(
          padding: EdgeInsets.all(4),
          width: 122,
          height: 122,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            border: GradientBoxBorder(
              width: 2,
              gradient: LinearGradient(
                colors: [
                  Color(0xffEA5EFF),
                  Color.fromARGB(119, 234, 94, 255),
                  
                ],
              ),
            ),
          ),
       
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/v2/resize:fit:1400/format:webp/0*A7MUqyCLvZDcHkfM.jpg')
          )
          
        );
  }