// otp_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/src/login/custom_pinput.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/buttons/gradient_button.dart';
import 'custom_appbar.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(5, (index) => TextEditingController());
    _focusNodes = List.generate(5, (index) => FocusNode());
  }

  void _submitOtp() {
    String otp = _controllers.map((controller) => controller.text).join();
    // Send OTP to backend or perform necessary actions
    print('Entered OTP: $otp');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImages2colorBackground),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(Navigator.of(context).pop),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              SizedBox(
                height: 72,
                width: 343,
                child: Column(
                  children: [
                    largeText('+9647803632082'),
                    smallText(
                        'Write the OTP have been sent to your phone number',
                        align: TextAlign.center),
                  ],
                ),
              ),
              CustomPinput(
                controllers: _controllers,
                focusNodes: _focusNodes,
                onChanged: (pin) {
                  if (pin.length < 5) {
                    _focusNodes[pin.length].requestFocus();
                  } else {
                    FocusScope.of(context).unfocus();
                  }
                  for (int i = 0; i < pin.length; i++) {
                    _controllers[i].text = pin[i];
                  }
                  print('Changed: $pin');
                },
                onCompleted: (pin) {
                  print('Completed: $pin');
                },
              ),
              
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'didnt recieve the code?',
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    child: const Text(
                      ' Resend',
                      style: TextStyle(color: Color(0xff8A87FF)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              GradientButton(
                ontap: _submitOtp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
