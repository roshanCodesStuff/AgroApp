import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 182, 215, 125), // Background color
        appBar: AppBar(
          title: const Text("AgroConnect"),
          backgroundColor: Colors.green, // App bar color
        ),
        body: const Center(
          child: Text(
            "Welcome to AgroConnect!", // Welcome message
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black), // Text style
          ),
        ),
      ),
    );
  }
}