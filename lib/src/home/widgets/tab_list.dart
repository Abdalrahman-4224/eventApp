 

  import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liverpod_structure/data/models/tabdata.dart';

List<TabData> tabs = [
    TabData(
      index: 0,
      title: const Tab(
        child: Text('All'),
      ),
      content: const Center(child: Text('Content for Tab 1')),
    ),
    TabData(
      index: 1,
      title: const Tab(
        child: Text('All'),
      ),
      content: const Center(child: Text('Content for Tab 1')),
    ),
    TabData(
      index: 2,
      title: const Tab(
        child: Text('Jazz'),
      ),
      content: const Center(child: Text('Content for Tab 2')),
    ),
    TabData(
      index: 3,
      title: const Tab(
        child: Text('music'),
      ),
      content: const Center(child: Text('Content for Tab 2')),
    ),
    TabData(
      index: 4,
      title: const Tab(
        child: Text('concert'),
      ),
      content: const Center(child: Text('Content for Tab 2')),
    ),
    // Add more tabs as needed
  ];