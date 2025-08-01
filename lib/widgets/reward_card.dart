import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;

  RewardCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 40),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
