import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_action_button.dart'; // Import the custom widget
import 'co_guest_detail.dart';
import 'add_co_guest.dart';
import 'add_and_invite_other_widget.dart';
import 'send_invite.dart';
import 'invite_single_co_guest.dart';

// manage booking page

class ManageBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Bookings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFF6666CC),
      ),
       // Set the background color here
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color(0xFFdfdff5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/pillup1.png', // Ensure this path is correct
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tushar Prakash',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text('Room No: 301'),
                        SizedBox(height: 4.0),
                        Text('AC Deluxe Private room'),
                        SizedBox(height: 4.0),
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text(' X 2'),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF7b82d9),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'CHECK-IN',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '24',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'APR \'24',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 4.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Text(
                                      '2N',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF7b82d9),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'CHECK-OUT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'APR \'24',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CustomActionButton(
                      icon: Icons.person_add,
                      title: 'Add Co-Guest',
                      subtitle: 'Invite other to share experience',
                      backgroundColor: Color(0xFFFFA500), // Orange color
                      onPressed: () {
                        // Add sharer functionality
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CustomActionButton(
                      icon: Icons.calendar_today,
                      title: 'Extend Stay',
                      subtitle: 'Extend Your Stay Here',
                      backgroundColor: Color(0xFFFF3366), // Pink color
                      onPressed: () {
                        // Extend stay functionality
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CustomActionButton(
                      icon: Icons.cancel,
                      title: 'Cancel Booking',
                      subtitle: 'Cancel your stay',
                      backgroundColor: Color(0xFFFFD700), // Yellow color
                      onPressed: () {
                        // Cancel booking functionality
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            CoGuestDetail(
              bookingId: 'BEN30029-2',
              status: 'Accepted',
              guestName: 'Rahul Singh',
              roomNo: '301 B',
              roomDetail: 'Bed in 6 Bed mixed AC Dormitory',
              email: 'xyz@gmail.com',
            ),

            SizedBox(height: 16.0),
            CoGuestDetail(
              bookingId: 'BEN30029-2',
              status: 'Accepted',
              guestName: 'Rahul Singh',
              roomNo: '301 B',
              roomDetail: 'Bed in 6 Bed mixed AC Dormitory',
              email: 'xyz@gmail.com',
            ),

            SizedBox(height: 16.0),
            BookingDetail(bookingId:'BEN30029-2',
            roomDetail: 'AC',
            roomNo: '302',
            ),
            SizedBox(height: 16.0),
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
              backgroundColor:Color(0xff7b82d9),
              ),
            SizedBox(width: 8.0),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
          
          children: [
            BookingInviteCard(
              bookingId: 'BEN30029-2',
              roomInfo: 'Room No. : 202 - 1D',
              description: 'Bed in 8 Bed Male only AC Dormitory Room with Ensuite Bathroom',
              onInviteTap: () {
                // Handle invite button tap
              },
            ),
            BookingInviteCard(
              bookingId: 'BEN30029-3',
              roomInfo: 'Room No. : 202 - 1D',
              description: 'Bed in 8 Bed Male only AC Dormitory Room with Ensuite Bathroom',
              onInviteTap: () {
                // Handle invite button tap
              },
            ),
          ],
        ),
            
      InviteCoGuest(), // Display the InviteCoGuest widget
          ],
          
        ),
      ),
    );
  }
}
