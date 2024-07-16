// lib/models/tab_data.dart

import 'package:flutter/material.dart';

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