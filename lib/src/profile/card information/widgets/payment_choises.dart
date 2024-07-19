import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/src/buying/online%20payment/online_payment_card.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class PaymentChoises extends OnlinePaymentCard {
  final String text2;
  final VoidCallback ontap;

  const PaymentChoises({
    super.key,
    required super.iconName,
    required super.text,
    required this.text2,
  
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 8, bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xff060212),
          borderRadius: BorderRadius.circular(8),
        ),
        width: 382,
        height: 73,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(iconName,
                
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      smallBoldText(text),
                      smallText(text2)
                    ],
                  ),
                ),
              ],
            ),
             
              SvgPicture.asset(Assets.assetsIconsPrupleRightArrow),
          ],
        ),
      ),
    );
  }
}