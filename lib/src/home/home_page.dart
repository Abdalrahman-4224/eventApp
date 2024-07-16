import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/data/providers/settings_provider.dart';
import 'package:liverpod_structure/src/home/widgets/build_scroll_view_container.dart';
import 'package:liverpod_structure/src/home/widgets/custom_home_page_appbar.dart';
import 'package:liverpod_structure/utils/widgets/background.dart';
import 'package:liverpod_structure/utils/widgets/custom_bottom_navigation_bar.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        unselectedItemColor: const Color(0xff5B5B5B),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            BackGround(),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    home_page_appbar(),
                    DefaultTabController(
                      length: tabs.length,
                      child: Column(
                        children: [
                          Container(
                            width: 390,
                            height: 48,
                            child: TabBar(
                              tabs: tabs.map((tab) => tab.title).toList(),
                              unselectedLabelColor: const Color(0xffBEB6BF),
                              labelColor: const Color(0xffE85EFF),
                              indicator: CustomGradientTabIndicator(),
                            ),
                          ),
                          Container(
                            height: 500, // Adjust the height as needed
                            child: TabBarView(
                              children: tabs.map((tab) => tab.content).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<TabData> tabs = [
    TabData(
      index: 0,
      title: const Tab(
        child: Text('All'),
      ),
      content: Center(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              6,
              (index) => BuildScrollViewContainer(index),
            ),
          ),
        ),
      ),
    ),
    TabData(
      index: 1,
      title: const Tab(
        child: Text('Jazz'),
      ),
      content: const Center(child: Text('Content for Tab 2')),
    ),
    TabData(
      index: 2,
      title: const Tab(
        child: Text('Music'),
      ),
      content: const Center(child: Text('Content for Tab 3')),
    ),
    TabData(
      index: 3,
      title: const Tab(
        child: Text('Concert'),
      ),
      content: const Center(child: Text('Content for Tab 4')),
    ),
  ];
}

class TabData {
  final int index;
  final Tab title;
  final Widget content;

  TabData({
    required this.index,
    required this.title,
    required this.content,
  });
}

class CustomGradientTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomGradientTabIndicatorPainter();
  }
}

class _CustomGradientTabIndicatorPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFFFF27F6),
          Color(0xFFFF27F6),
        ],
      ).createShader(Rect.fromLTWH(
        0.0,
        0.0,
        configuration.size!.width,
        configuration.size!.height,
      ))
      ..style = PaintingStyle.fill;

    final double width = 55.0;
    final double height = 2.0;

    final Offset indicatorOffset = Offset(
      offset.dx + (configuration.size!.width / 2) - (width / 2),
      configuration.size!.height - height,
    );

    final Rect rect = Rect.fromLTWH(
      indicatorOffset.dx,
      indicatorOffset.dy,
      width,
      height,
    );

    canvas.drawRect(rect, paint);
  }
}