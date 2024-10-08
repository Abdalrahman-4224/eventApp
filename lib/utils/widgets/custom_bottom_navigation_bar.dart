import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liverpod_structure/data/providers/navigation_bar_provider.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  final Color backgroundColor;
  final Color unselectedItemColor;

  CustomBottomNavigationBar({
    this.backgroundColor = Colors.black,
    this.unselectedItemColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavProvider);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        ref.read(bottomNavProvider.notifier).state = index;
      },
      backgroundColor: Colors.black,
      unselectedItemColor: unselectedItemColor,
      selectedItemColor: Colors.white, // Set selected item color to white or any preferred color
      items: [
        _buildBottomNavigationBarItem(Assets.assetsIconsVectorHome, 'Homepage', currentIndex == 0),
        _buildBottomNavigationBarItem(Assets.assetsIconsPurpleTicketExpired, 'Tickets', currentIndex == 1),
        _buildBottomNavigationBarItem(Assets.assetsIconsHeart, 'Likes', currentIndex == 2),
        _buildBottomNavigationBarItem(Assets.assetsIconsPurpleProfile, 'Profile', currentIndex == 3),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
    String iconPath, String label, bool selected) {
  Color iconColor = selected ? Colors.white : unselectedItemColor;

  return BottomNavigationBarItem(
    icon: selected
        ? _buildSvgIcon(iconPath)
        : SvgPicture.asset(
            iconPath,
            color:iconColor,
            width: 24,
            height: 24,
          ),
    label: label,
  );
}

  Widget _buildSvgIcon(String iconPath) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return _buildGradientShader();
      },
      blendMode: BlendMode.srcIn,
      child: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
    );
  }

  Shader _buildGradientShader() {
    return const LinearGradient(
      colors: <Color>[Color(0xffE85EFF), Color.fromARGB(49, 231, 94, 255)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      tileMode: TileMode.clamp,
    ).createShader(Rect.fromLTWH(0.0, 0.0, 24.0, 24.0));
  }

  TextStyle _buildSelectedTextStyle() {
    return TextStyle(
      foreground: Paint()..shader = _buildGradientShader(),
    );
  }
}
