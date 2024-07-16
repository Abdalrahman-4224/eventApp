// lib/widgets/number_input_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liverpod_structure/common_lib.dart';
import '../../../data/providers/number_input_provider.dart';
import '../../constants/sizes.dart';

class NumberInputField extends ConsumerWidget {
  const NumberInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberInput = ref.watch(numberInputProvider);

    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1E1B34),
        borderRadius: BorderRadius.circular(50)),
      
      child: SizedBox(
        width: 383,
        height: 56,
        child: TextFormField(
         style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          initialValue: numberInput,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(Assets.assetsIconsCall),
            ),
            labelText: 'Enter number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0), // Circular border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xff1C2442)),
            ),
          ),
          onChanged: (value) {
            // Update the provider with the new value
            ref.read(numberInputProvider.notifier).state = value;
          },
        ),
      ),
    );
  }
}
