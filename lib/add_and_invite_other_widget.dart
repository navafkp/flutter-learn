import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final List<Widget> children;
  final Color backgroundColor;

  const CustomRow({
    required this.children,
    this.backgroundColor = const Color(0xFFFFA500), // Orange color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Do something when row is tapped
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: children,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Invite others to share the experience.',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
