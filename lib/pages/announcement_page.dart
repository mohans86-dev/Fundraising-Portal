import 'package:flutter/material.dart';

class AnnouncementPage extends StatelessWidget {
  final List<String> announcements = [
    "🎉 New reward unlocked at ₹10,000!",
    "📢 Share your referral code to increase your impact.",
    "🏆 Monthly top intern will get a gift hamper.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Announcements", style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 4,
        backgroundColor: Colors.teal.shade600,),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.announcement),
            title: Text(announcements[index]),
          );
        },
      ),
    );
  }
}
