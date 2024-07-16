import 'package:flutter/material.dart';

class GradientButtonWithState extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isEnabled;

  const GradientButtonWithState({
    required this.onTap,
    required this.isEnabled,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        height: 66.19,
        width: 382,
        decoration: BoxDecoration(
          gradient: isEnabled
              ? const LinearGradient(
                  colors: [
                    Color(0xff1828BD),
                    Color(0xffE85EFF),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [
                    Colors.grey,
                    Colors.grey,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: isEnabled
              ? [
                  BoxShadow(
                    color: Color(0xff1828BD).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: Offset(-4, -4), // Shadow position
                  ),
                  BoxShadow(
                    color: Color(0xffE85EFF).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: Offset(4, 4), // Shadow position
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: Colors.black,
            ),
            child: Stack(
              children: [
                Opacity(
                  opacity: isEnabled ? 0.55 : 0.25,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(97, 24, 40, 189),
                          Color(0xff1828BD),
                          Color.fromARGB(202, 231, 94, 255),
                          Color.fromARGB(255, 100, 31, 112),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: isEnabled ? Colors.white : Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}