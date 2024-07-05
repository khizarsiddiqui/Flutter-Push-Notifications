import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Push Notifications"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
