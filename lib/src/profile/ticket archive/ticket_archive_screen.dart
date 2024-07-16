import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/profile/ticket%20archive/widgets/expired_ticket_card.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/circle_appbar_button.dart';

class TicketArchiveScreen extends StatefulWidget {
  const TicketArchiveScreen({super.key});

  @override
  State<TicketArchiveScreen> createState() => _TicketArchiveScreenState();
}

class _TicketArchiveScreenState extends State<TicketArchiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(Assets.assetsImages2colorBackground),
      Scaffold(
        appBar: AppBar(
          title: mediumBoldText('Ticket Archive'),
          leading: CircleAppbarButton(Assets.assetsIconsArrowLeft)
        ),
        body: SingleChildScrollView(
            child: Column(
                children: List.generate(6, (index) => expiredTicketCard(index)),
              
            ),
          ),
      ),
    ],);
  }
}