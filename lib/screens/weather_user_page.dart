import 'package:flutter/material.dart';
import '../models/weather_model.dart'; 

class WeatherUserPage extends StatelessWidget {
  final Weather weather;
  const WeatherUserPage({super.key, required this.weather});

  // FIX: Change return type to MaterialColor to unlock .shade properties
  MaterialColor _getWeatherColor() {
    switch (weather.type) {
      case WeatherType.cold: return Colors.lightBlue;
      case WeatherType.rainy: return Colors.blue;
      case WeatherType.sunny: return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Now 'color' is a MaterialColor and has .shade
    final MaterialColor color = _getWeatherColor();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Field Status'),
        backgroundColor: color,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0, // Flat look blends better with gradients
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color[100]!, // Use square brackets for safety
              color[50]!,
              Colors.white,
            ],
            stops: const [0.0, 0.4, 1.0],
          ),
        ),
        // Padding is fine here, but let's wrap the Column in it
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Farm Conditions',
                style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold, 
                  color: color[700] // Using a darker shade for readability
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "${weather.temperature.toStringAsFixed(1)} °C", 
                style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)
              ),
              Text(
                weather.type.name.toUpperCase(),
                style: TextStyle(
                  fontSize: 24, 
                  color: Colors.blueGrey.shade600, 
                  letterSpacing: 2
                )
              ),
              const SizedBox(height: 20),
              Text(
                weather.message, 
                textAlign: TextAlign.center, 
                style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic)
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}