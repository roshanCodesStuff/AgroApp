import 'dart:math';

// Using Enums makes your UI logic much safer!
enum WeatherType { cold, rainy, sunny }

class Weather {
  final double temperature;
  final WeatherType type; // Changed from String
  final String message;

  Weather({
    required this.temperature,
    required this.type,
    required this.message,
  });

  factory Weather.random() {
    final random = Random();
    double temp = (random.nextDouble() * 45) - 5; 

    WeatherType selectedType;
    String msg;

    if (temp < 10) {
      selectedType = WeatherType.cold;
      msg = "It's chilly! Keep the greenhouse doors closed.";
    } else if (temp < 25) {
      selectedType = WeatherType.rainy;
      msg = "Perfect moisture levels. No manual watering needed.";
    } else {
      selectedType = WeatherType.sunny;
      msg = "High heat detected! Increase irrigation for the crops.";
    }

    return Weather(
      temperature: temp,
      type: selectedType,
      message: msg,
    );
  }
}