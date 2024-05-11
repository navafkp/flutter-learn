import 'package:flutter/material.dart';

class BookingInviteCard extends StatelessWidget {
  final String bookingId;
  final String roomInfo;
  final String description;
  final VoidCallback onInviteTap;

  const BookingInviteCard({
    required this.bookingId,
    required this.roomInfo,
    required this.description,
    required this.onInviteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                decoration: BoxDecoration(
                  color: Color(0xff7b82d9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  'Booking ID : $bookingId',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                
                onPressed: onInviteTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffff3366),
                  foregroundColor: Colors.white,
                  // primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    
                  ),
                ),
                
                child: Text(
                  'send Invite',
                  
                )
                
              ),
              
            ],
            
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(Icons.bed, color: Colors.purple),
              SizedBox(width: 8.0),
              Text(
                roomInfo,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
