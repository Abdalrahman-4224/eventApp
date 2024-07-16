import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/widgets/circle_appbar_button.dart';
import 'package:liverpod_structure/utils/widgets/custom_search_bar.dart';




AppBar TickingAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions:[CircleAppbarButton(Assets.assetsIconsArrowLeft),
      SizedBox(width: 80,),
      const Text(
        'Choose Seats',
        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),
      ),
      SizedBox(width: 80,),
       Padding(
         padding: const EdgeInsets.only(right:8.0),
         child: CircleAppbarButton(Assets.assetsIconsCalendar),
       )
      ],
     
      
    );
  }

