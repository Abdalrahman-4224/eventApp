import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpProvider = StateNotifierProvider<OtpNotifier, List<String>>((ref) {
  return OtpNotifier();
});

class OtpNotifier extends StateNotifier<List<String>> {
  OtpNotifier() : super(List.generate(6, (index) => '')); // Assuming 6 OTP boxes

  void updateOtp(int index, String value) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) value else state[i],
    ];
  }
}