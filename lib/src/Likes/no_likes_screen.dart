import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

class NoLikesScreen extends StatelessWidget {
  const NoLikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(Assets.assetsImages2colorBackground),
      Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.assetsImagesHeartSlash),
          largeBoldText('there is no likes'),
          smallText('Please add some liked ticket to have this feature we hope you will enjoy the app',align: TextAlign.center)
        ],
      ),
    ],);
  }
}