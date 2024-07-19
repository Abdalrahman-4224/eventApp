import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liverpod_structure/src/choosingseat/seat_status.dart';
import 'package:liverpod_structure/src/choosingseat/seat_widget.dart';

class SeatLayout extends StatefulWidget {
  @override
  _SeatLayoutState createState() => _SeatLayoutState();
}

class _SeatLayoutState extends State<SeatLayout> {
  final List<List<Seat?>> seatRows = [
    [null,Seat(id: 'A1'),Seat(id: 'A1'),null, null, Seat(id: 'A4'),Seat(id: 'A5'),Seat(id: 'A6')],
    [Seat(id: 'B1'),Seat(id: 'B2'),Seat(id: 'B3'),Seat(id: 'B4'), null, Seat(id: 'B5'),Seat(id: 'B6'),Seat(id: 'B7'),Seat(id: 'B8')],
    [null,Seat(id: 'C1'), Seat(id: 'C2'), Seat(id: 'C3'), Seat(id: 'C4'),Seat(id: 'C5'),Seat(id: 'C6'),Seat(id: 'C7')],
    [Seat(id: 'D1'), Seat(id: 'D2'),  Seat(id: 'D3'), Seat(id: 'D4'), Seat(id: 'D5'), Seat(id: 'D6'), Seat(id: 'D7'), Seat(id: 'D8'), Seat(id: 'D9')],
    [Seat(id: 'E1'), Seat(id: 'E2'),  Seat(id: 'E3'), Seat(id: 'E4'), Seat(id: 'E5'), Seat(id: 'E6'), Seat(id: 'E7'), Seat(id: 'E8'), Seat(id: 'E9')],
    [Seat(id: 'F1'), Seat(id: 'F2'),  Seat(id: 'F3'), Seat(id: 'F4'), Seat(id: 'F5'), Seat(id: 'F6'), Seat(id: 'F7'), Seat(id: 'F8'), Seat(id: 'F9')],
    
  ];

  void _onSeatTap(Seat seat) {
    setState(() {
      if (seat.status == SeatStatus.available) {
        seat.status = SeatStatus.selected;
      } else if (seat.status == SeatStatus.selected) {
        seat.status = SeatStatus.available;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: seatRows.map((row) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((seat) {
              if (seat == null) {
                return SizedBox(width: 30); // Adjust the width for spacing
              } else {
                return SeatWidget(
                  seat: seat,
                  onTap: () => _onSeatTap(seat),
                );
              }
            }).toList(),
          ),
        );
      }).toList(),
    );
  }
}