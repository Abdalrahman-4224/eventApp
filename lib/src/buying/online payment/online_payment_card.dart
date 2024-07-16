import 'package:flutter/material.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class OnlinePaymentCard extends StatelessWidget {
  final String iconName;
  final String text;

  const OnlinePaymentCard({
    super.key,
    required this.iconName,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xff110D17),
        borderRadius: BorderRadius.circular(8),
      ),
      width: 382,
      height: 72,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(iconName),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: smallBoldText(text),
          ),
        ],
      ),
    );
  }
}