import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(FundraisingApp());
}

class FundraisingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intern Portal',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
