import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/data/providers/card_detail_provider.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/custom_paint_container.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/dotes_gradient_button.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/payment_choises.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/card_detail.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class CardInformationScreen extends ConsumerWidget {
  const CardInformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailcardvisibility = ref.watch(containerVisibilityProvider);

    void toggleDetailCardVisibility() {
      ref.read(containerVisibilityProvider.notifier).state = !detailcardvisibility;
    }

    return Stack(
      children: [
        Image.asset(Assets.assetsImages3colorbackgroundPNG),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 266.51,
                width: 390,
                child: Stack(
                  children: [
                    const CustomPaintWidget(width: 390),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: DotesGradientButton(
                        onPressed: toggleDetailCardVisibility,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(Assets.assetsIconsVisaPNG),
                          largeBoldText('**** **** **** 4224'),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  mediumBoldText('Haider'),
                                  mediumBoldText('EXP Date'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  largeBoldText('Haider saadon'),
                                  largeBoldText('03/7'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              PaymentChoises(
                iconName: Assets.assetsIconsGOPLAY,
                text: 'GOPLAY',
                text2: '0854 5632 1752',
                ontap: () {
                  // TODO route
                },
              ),
              PaymentChoises(
                iconName: Assets.assetsIconsDANA,
                text: 'DANA',
                text2: '0854 5632 1752',
                ontap: () {
                  // TODO route
                },
              ),
              PaymentChoises(
                iconName: Assets.assetsIconsSHOPEEPY,
                text: 'SHOPEEPAY',
                text2: '0854 5632 1752',
                ontap: () {
                  // TODO route
                },
              ),
              SizedBox(
                width: 382,
                height: 65,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    side: const BorderSide(color: Color(0xff828282), width: 1),
                  ),
                  child: const Text(
                    'Add Card',
                    style: TextStyle(fontSize: 20, color: Color(0xff828282), fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
        CardDetail(
          isVisible: detailcardvisibility,
          onClose: toggleDetailCardVisibility,
        ),
      ],
    );
  }
}