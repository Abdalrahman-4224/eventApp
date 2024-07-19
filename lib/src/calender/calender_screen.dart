import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/calender/calender_widget.dart';
import 'package:liverpod_structure/src/calender/dotted_time_line.dart';
import 'package:liverpod_structure/src/login/custom_appbar.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import '../../utils/constants/assets.dart';

// Import the DottedTimeline widget

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImages2colorBackground),
        Scaffold(
          appBar: CustomAppBar(onTap: (){
            Navigator.of(context).pop();
          }),
          backgroundColor: Colors.transparent,
          body:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    width: 382,
                    height: 340,
                    child: CalenderWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        largeBoldText('Upcoming'),
                      ],
                    ),
                  ),
                  // Add some spacing between the calendar and the timeline
                  
                  // Dotted timeline
                  const DottedTimeline(
                    items: [1, 2, 3, 4, 5], // Provide your actual items here
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}