enum SeatStatus { available, selected, booked }

class Seat {
  final String id;
  SeatStatus status;

  Seat({required this.id, this.status = SeatStatus.available});
}