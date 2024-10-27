import 'package:flutter/material.dart';

class AppbarIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const AppbarIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 10),
      child: IconButton(
        icon: Icon(
          icon,
        ),
        iconSize: 20,
        onPressed: onPressed,
      ),
    );
  }
}