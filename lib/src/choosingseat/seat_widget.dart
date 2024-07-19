import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/src/choosingseat/seat_status.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

class SeatWidget extends StatelessWidget {
  final Seat seat;
  final VoidCallback onTap;

  const SeatWidget({Key? key, required this.seat, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (seat.status) {
      case SeatStatus.selected:
        color = Colors.green;
        break;
      case SeatStatus.booked:
        color = Colors.red;
        break;
      case SeatStatus.available:
      default:
        color = Colors.grey;
        break;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(4), // Add margin for spacing between seats
        child: SvgPicture.asset(
          Assets.assetsIconsSeat, // Ensure your SVG path is correct
          color: color,
          width: 33, // Set the desired width
          height: 22, // Set the desired height
        ),
      ),
    );
  }
}