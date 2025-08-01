import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboardData = [
    {"name": "Asha Mehta", "donation": 8000},
    {"name": "Vikas Kumar", "donation": 7000},
    {"name": "Sneha Roy", "donation": 6200},
    {"name": "Rahul Sharma", "donation": 5400},
    {"name": "Priya Nair", "donation": 5000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard", style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 4,
        backgroundColor: Colors.teal.shade600,),
      body: ListView.builder(
        itemCount: leaderboardData.length,
        itemBuilder: (context, index) {
          var intern = leaderboardData[index];
          return ListTile(
            leading: CircleAvatar(child: Text("#${index + 1}")),
            title: Text(intern["name"]),
            trailing: Text("₹${intern["donation"]}"),
          );
        },
      ),
    );
  }
}
