import 'package:flutter/material.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Color(0xff280D2A)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        Image.asset(Assets.assetsImagesTicketsBackground),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: largeBoldText('popular'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OpacityContainer(text: 'noor alzayn'),
                        OpacityContainer(text: 'Concert'),
                        OpacityContainer(text: 'jazz'),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 343,
                    height: 90,
                    child: Column(
                      children: [
                        largeBoldText('No tickets Bought'),
                        smallText(
                          'it appears you havent bought any tickets yet maybe try these?',
                          align: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class OpacityContainer extends StatelessWidget {
  final String text;

  const OpacityContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.2,
            child: Container(
              width: 112,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          smallText(text),
        ],
      ),
    );
  }
}