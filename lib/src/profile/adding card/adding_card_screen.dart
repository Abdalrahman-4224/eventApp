import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/profile/adding%20card/disabled_button.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/custom_profile_text_field.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class AddingCardScreen extends StatefulWidget {
  const AddingCardScreen({super.key});

  @override
  State<AddingCardScreen> createState() => _AddingCardScreenState();
}

class _AddingCardScreenState extends State<AddingCardScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImages3colorbackgroundPNG),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: smallText('Card number'),
                ),
                customProfileTextField('1234-5678-1234-5678', width: 382.0),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: smallText('Cardholder name'),
                ),
                customProfileTextField('Prince', width: 382.0),
                SizedBox(
                  width: 382,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: smallText('Expiry date'),
                          ),
                          customProfileTextField('07/2027', width: 148.57),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: smallText('CVV/CVC'),
                          ),
                          customProfileTextField('...', width: 148.57),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    smallText("I'm agree with terms and conditions"),
                  ],
                ),
                GradientButtonWithState(
                  onTap: isChecked ? () {
                    // Handle button tap
                  } : null,
                  isEnabled: isChecked,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}