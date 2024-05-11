import 'package:flutter/material.dart';
// guest accepted card
class CoGuestDetail extends StatelessWidget {
  final String bookingId;
  final String status;
  final String guestName;
  final String roomNo;
  final String roomDetail;
  final String email;

  CoGuestDetail({
    required this.bookingId,
    required this.status,
    required this.guestName,
    required this.roomNo,
    required this.roomDetail,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFffefd4), // Background color
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.orange), // Border color
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Color(0xFFDFDFF5), // Light purple background
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Booking ID : $bookingId',
                  style: TextStyle(
                    color: Color(0xFF6666CC),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 8.0),
              Text(
                'Co-Guest Detail',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            guestName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text('Room No: $roomNo'),
          Text(roomDetail, style: TextStyle(color: Color(0xFF6666CC))),
          SizedBox(height: 8.0),
          Text('Email: $email'),
        ],
      ),
    );
  }
}
