import 'package:flutter/material.dart';
import 'leaderboard_page.dart';
import 'announcement_page.dart';
import '../widgets/reward_card.dart';
import '../data/mock_data.dart';

class DashboardPage extends StatelessWidget {
  final String name;

  DashboardPage({required this.name});

  @override
  Widget build(BuildContext context) {
    String referralCode="";
    for(var i=0; i<name.length; i++){
      if(name[i]!=" "){
        referralCode+=name[i];
      }
    }
    referralCode="${referralCode.toLowerCase()}2025";

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 5,
        backgroundColor: Colors.teal.shade600,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(name),
              accountEmail: Text("Intern"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.teal),
              ),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            ListTile(
              leading: Icon(Icons.leaderboard),
              title: Text("Leaderboard"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => LeaderboardPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.announcement),
              title: Text("Announcements"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AnnouncementPage()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back,",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
            Text(name,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade700)),
            SizedBox(height: 10),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Referral Code",
                        style: TextStyle(color: Colors.grey.shade600)),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(referralCode,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text("Total Donations Raised",
                        style: TextStyle(color: Colors.grey.shade600)),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee, color: Colors.green),
                        SizedBox(width: 3),
                        Text("5,000",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text("Rewards",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Center(
              child: Row(

                children: [
                  RewardCard(title: "Bronze Badge"),
                  RewardCard(title: "Silver Badge"),
                  RewardCard(title: "Gift Voucher"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
