import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Today News',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        color: Colors.amber,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
