


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key? key}) : super(key: key);
  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  List<Widget> myTabs = [
    const SizedBox(
      width: 20.0,
      child: Tab(text: 'hello'),
    ),
    const SizedBox(
      width: 70,
      child: Tab(text: 'world'),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Widget tab) {
          const String label = "Test";
          return const Center(
            child: Text(
              'This is the $label tab',
              style: TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),
    );
  }
}