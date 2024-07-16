import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

Widget paymentMethodCard(String text,imagename) {
  return Container(
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(5),
    width:367,
    height: 64,
    decoration: BoxDecoration(
      color: Color(0xff110D17),
      borderRadius: BorderRadius.circular(10)
    ),
    
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff3C1F45),
                  child: SvgPicture.asset(
                    imagename,
                  ),
                ),
              ),
            ],
          ),
        ),
        mediumBoldText(text),
        
      ],
    ));
}