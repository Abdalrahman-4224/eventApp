import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;

  const CustomAppBar({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: 
        // Using ElevatedButton with CircleBorder for the circular icon button
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(4), // Add padding to ensure correct icon size
             // Background color of the inner circle
            elevation: 2,
          ),
          child: Container(
        height: 39,
        width: 39,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff09FBD3),
              Colors.grey,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(Assets.assetsIconsArrowLeft),
            ),
          ),
        ),
      )
        ),
      
      title: const Text(
        'Choose Seats',
        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}