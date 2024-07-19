import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

Widget TicketCard(int index) {
  return Container(
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(5),
    width:367,
    height: 64,
    decoration: BoxDecoration(
      color: Color(0xff161617),
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
                  backgroundColor: Color.fromARGB(57, 111, 27, 147),
                  child: SvgPicture.asset(
                    Assets.assetsIconsTicket,
                    color:Color(0xff4C32CC)
                  ),
                ),
              ),
              Column(
                children: [
                  mediumBoldText('SECTION P ,ROW 3'),
                  smallText('12 Seats available'),
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            mediumText('€30'),
            smallText('per person'),
          ],
        )
      ],
    ));
}