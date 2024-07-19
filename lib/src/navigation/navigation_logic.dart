import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liverpod_structure/data/providers/navigation_bar_provider.dart';
import 'package:liverpod_structure/src/Likes/no_likes_screen.dart';
import 'package:liverpod_structure/src/home/home_page.dart';
import 'package:liverpod_structure/src/profile/profile%20home%20page/profile_home_page.dart';
import 'package:liverpod_structure/src/tickets/no%20liked%20tickets/tickets_screen.dart';
import 'package:liverpod_structure/utils/widgets/custom_bottom_navigation_bar.dart';

class NavigationLogic extends ConsumerWidget {
  const NavigationLogic({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(bottomNavProvider);

    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: <Widget>[
        // Home page
        HomePage(),

        // Search page
        TicketsScreen(),

        // Likes page
        NoLikesScreen(),

        // Profile page
        ProfileHomePage(),
      ][currentPageIndex],
    );
  }
}