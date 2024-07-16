import 'package:liverpod_structure/common_lib.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import '../../utils/widgets/buttons/gradient_button.dart';
import '../../utils/widgets/form_fields/number_input_field.dart';
import '../../src/login/otp_screen.dart';

class PhonNumberScreen extends StatefulHookConsumerWidget {
  const PhonNumberScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhonNumberScreenState();
}
class _PhonNumberScreenState extends ConsumerState<PhonNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(Assets.assetsImagesGroup),
              const NumberInputField(),
              const SizedBox(
                height: 30.20,
              ),
              GradientButton(ontap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const OtpScreen(),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );;
  }
}