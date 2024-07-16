import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/widgets/circle_appbar_button.dart';


AppBar buyinappbar(String title ,BuildContext context) {
    return AppBar(
      leading:GestureDetector(
        
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAppbarButton(Assets.assetsIconsArrowLeft ),
        ),
      ),
      backgroundColor: Colors.transparent,
      title: 
       Center(
         child: Text(
          title,
          style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),
               ),
       ),
      actions:[
      
       Padding(
         padding: const EdgeInsets.only(right:8.0),
         child: CircleAppbarButton(Assets.assetsIconsCalendar),
       )
      ],
     
      
    );
  }