import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/buying/online%20payment/online_payment_card.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_appbar.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_background.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/buttons/gradient_button.dart';

class OnlinePayment extends StatelessWidget {
  const OnlinePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        paymentBackground(context),
        Scaffold(
          appBar: buyinappbar('online payment', context),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
                width: double.infinity,
              ),
              largeBoldText('Online payment'),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Column(
                  children: [
                    const OnlinePaymentCard(iconName:Assets.assetsIconsPipalPNG, text:'Pay using Pipal'),
                    const OnlinePaymentCard(iconName:Assets.assetsIconsQiqardPNG,text: 'Pay using Qiqard'),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      width: 382,
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xff171717),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Add Card',
                          style: TextStyle(fontSize: 20, color: Color(0xff828282)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GradientButton(ontap: () {}),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}