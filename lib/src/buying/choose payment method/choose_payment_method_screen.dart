import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/buying/choose%20payment%20method/payment_method_card.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_appbar.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_background.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/buttons/gradient_button.dart';

class ChoosePaymentMethodScreen extends StatelessWidget {
  const ChoosePaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       paymentBackground(context),
        Scaffold(
          appBar: buyinappbar('payment', context),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: 50),
              largeBoldText('Choose payment method'),
              const SizedBox(height: 70, width: double.infinity),
              Expanded(
                child: Column(
                  children: [
                    paymentMethodCard(
                        'Delivery on Cash', Assets.assetsIconsTruckTick),
                    paymentMethodCard(
                        'Nears Cash point', Assets.assetsIconsBuildings),
                    paymentMethodCard('Credit Card', Assets.assetsIconsCards),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GradientButton.gradientButton(
                  ontap: () {
                    // Your button action
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}