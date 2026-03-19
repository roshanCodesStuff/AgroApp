import 'package:flutter/material.dart';
import 'screens/weather_home_page.dart'; // Make sure this path is correct

void main() {
  runApp(const FarmWeatherApp());
}

class FarmWeatherApp extends StatelessWidget {
  const FarmWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer Weather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      // We start at the Home Page
      home: const WeatherHomePage(), 
    );
  }
}