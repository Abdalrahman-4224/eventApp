// otp_input_widget.dart

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinput extends StatefulWidget {
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;
  final Function(String) onChanged;
  final Function(String) onCompleted;

  const CustomPinput({
    required this.controllers,
    required this.focusNodes,
    required this.onChanged,
    required this.onCompleted,
  });

  @override
  _CustomPinputState createState() => _CustomPinputState();
}

class _CustomPinputState extends State<CustomPinput> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      textStyle: const TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700),
      width: 68,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xff1E1B34),
        borderRadius: BorderRadius.circular(16),
      ),
    );

    final focusedPinTheme = PinTheme(
      width: 68,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xff5D2775),
        ),
      ),
    );

    return Pinput(
      cursor: Container(
        height: 36,
        color: const Color(0xff5D2775),
        width: 1.5,
      ),
      length: 5,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      showCursor: true,
      autofocus: true,
      onChanged: widget.onChanged,
      onCompleted: widget.onCompleted,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      onTap: () {
        String otp = widget.controllers.map((controller) => controller.text).join();
        if (otp.isEmpty) {
          widget.focusNodes.first.requestFocus();
        } else {
          widget.focusNodes.last.requestFocus();
        }
      },
    );
  }
}