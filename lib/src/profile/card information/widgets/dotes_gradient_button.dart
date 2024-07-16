import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liverpod_structure/common_lib.dart';

class DotesGradientButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DotesGradientButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 99.74,
        height: 39.68,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [Color(0xffE85EFF), Color(0xff561976)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(Assets.assetsIcons3Dotes),
        ),
      ),
    );
  }
}