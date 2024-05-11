import 'package:flutter/material.dart';


// Extend stay, cancel booking, add co guest
class CustomActionButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final void Function() onPressed;

  CustomActionButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Adjust the alignment
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: Icon(icon, color: Colors.white),
                ),
                Icon(Icons.arrow_forward, color: Colors.white.withOpacity(0.7)),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
