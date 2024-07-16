import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/custom_profile_text_field.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class CardDetail extends StatelessWidget {
  final bool isVisible;
  final VoidCallback onClose;

  const CardDetail({Key? key, required this.isVisible, required this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Center(
        child: Material(
          color: Colors.transparent, // To make the Material widget background transparent
          child: Container(
            padding: const EdgeInsets.all(16),
            width: 358,
            height: 373.06,
            decoration: BoxDecoration(
              color: const Color(0xff272841),
              borderRadius: BorderRadius.circular(26.49),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mediumBoldText('Detail Card'),
                    IconButton(
                      onPressed: onClose,
                      icon: const Icon(Icons.close, color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, top: 8),
                  child: mediumBoldText('Card number', color: Color(0xff63658D)),
                ),
                customProfileTextField('1234-5678-1234-5678'),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, top: 8),
                  child: mediumBoldText('Cardholder name', color: Color(0xff63658D)),
                ),
                customProfileTextField('Prince'),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, top: 8),
                          child: mediumBoldText('Expiry date', color: Color(0xff63658D)),
                        ),
                        customProfileTextField('07/2027', width: 148.57),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 8),
                          child: mediumBoldText('CVV/CVC', color: Color(0xff63658D)),
                        ),
                        customProfileTextField('...', width: 148.57),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}