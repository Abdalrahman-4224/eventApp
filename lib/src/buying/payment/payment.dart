import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/buying/payment/ticket_card.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_appbar.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_background.dart';
import 'package:liverpod_structure/src/ticking%20and%20detail/widgets/faded_divider.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/buttons/gradient_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        paymentBackground(context),
        
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buyinappbar('Payment', context),
          body: Column(
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(3, (index) => TicketCard(index)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FadedDivider(context),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mediumText('Number of seats'),
                          mediumBoldText('16000'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mediumText('Number of seats'),
                          mediumBoldText('16000'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mediumText('Number of seats'),
                          mediumBoldText('16000'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadedDivider(context),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mediumText('Number of seats'),
                          mediumBoldText('16000'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GradientButton(
                  ontap: () {},
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }

  
}