import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/providers/otp_provider.dart';

class OTPBoxes extends ConsumerWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final int index;

  const OTPBoxes({
    super.key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otpState = ref.watch(otpProvider);

    return Container(
      width: 68,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: otpState[index].isNotEmpty ? Color(0xff5D2775) : Colors.transparent,
          width: 2.0,
        ),
        color: otpState[index].isNotEmpty ? Colors.black : const Color(0xff1E1B34),
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        cursorColor: const Color(0xff5D2775),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {
          ref.read(otpProvider.notifier).updateOtp(index, value); // Update the OTP value
          if (value.isNotEmpty) {
            if (nextFocusNode != null) {
              nextFocusNode!.requestFocus();
            } else {
              focusNode.unfocus();
            }
          }
        },
        decoration: const InputDecoration(
          counterText: '',
          counterStyle: TextStyle(fontWeight: FontWeight.bold),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontFamily: 'cairo',
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}