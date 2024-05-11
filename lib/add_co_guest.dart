import 'package:flutter/material.dart';
import 'add_and_invite_other_widget.dart';
// add co-guest , invite others to share experience

class BookingDetail extends StatelessWidget {
  final String bookingId;
  final String roomNo;
  final String roomDetail;

  BookingDetail({
    required this.bookingId,
    required this.roomNo,
    required this.roomDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFF8EADA), // Background color
        borderRadius: BorderRadius.circular(15.0),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First sub-container
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xffffefd4),
              borderRadius: BorderRadius.circular(15.0),
              
              border: Border.all(color: Color(0xfffe7e11)), // Green border color
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 8.0),
                    Text(
                      'Co-Guest',
                    
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.grey),
                SizedBox(height: 8.0),
                Text(
                  'Room No: $roomNo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  roomDetail,
                  style: TextStyle(color: Color(0xFF6666CC)),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          // Second sub-container
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFA500), // Orange color
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRow(
              children: [
                Icon(Icons.person_add, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  'Add Co-Guest',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
              ),
                
                

                
              ],
            ),
            
          ),
        

        ],
      ),
      
    );
  }
}