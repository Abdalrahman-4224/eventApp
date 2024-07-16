import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/src/profile/profile%20home%20page/widgets/gradient_number.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

Column profileInformationCard(String number,title,imagename) {
    return Column(children: [
            Row(children: [
               GradientNumberText(text: number),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(imagename),
              ),
            ],),
            xsmallText(title,align:TextAlign.center)
          ],);
  }


  GestureDetector profileSettingCard(String icon,title) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left:15.0),
        child: Row(mainAxisSize: MainAxisSize.max,
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(icon),
                          ),
                          smallBoldText(title),
                        ],
                      ),
      ),
    );
  }
  


  