import 'package:flutter/material.dart';

class ServicesIcon extends StatelessWidget {
  final IconData icon;
  final String title;

  const ServicesIcon({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 7),
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}