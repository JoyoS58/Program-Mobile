import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  final String balance;

  const BalanceCard({
    required this.title,
    required this.balance,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 135,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                balance,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_circle_right_rounded,
                size: 18,
                color: Colors.red,
              )
            ],
          ),
        ],
      ),
    );
  }
}