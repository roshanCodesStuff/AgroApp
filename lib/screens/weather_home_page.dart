import 'package:flutter/material.dart';
import '../models/weather_model.dart'; 
import 'weather_user_page.dart';     

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Farm Assistant"), 
        backgroundColor: Colors.green.shade700,
        elevation: 0,
        centerTitle: true,
        // foregroundColor: Colors.white, // Ensures text is readable
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity, // Force container to fill the screen
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green.shade100,
              Colors.green.shade50,
              Colors.white,
              ],
              stops: [0.0, 0.4, 1.0], // Creates a smooth transition
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome, Farmer!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Icon(Icons.thermostat, size: 80, color: Colors.blue),
            const SizedBox(height: 10),
            const Text("Tap below to check your field's vitals."),
            const SizedBox(height: 50),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 5,
              ),
              onPressed: () {
                final currentFieldWeather = Weather.random();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherUserPage(weather: currentFieldWeather),
                  ),
                );
              },
              child: const Text("Check Field Weather"),
            ),
          ],
        ),
      ),
    );
  }
}