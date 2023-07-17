void main() {
  List<double> celsiusTemperatures = [
    0.0,
    4.2,
    15.0,
    18.1,
    21.7,
    32.0,
    40.0,
    41.0
  ];

  for (double celsius in celsiusTemperatures) {
    double fahrenheit = celsiusToFahrenheit(celsius);
    double kelvin = celsiusToKelvin(celsius);

    print(
        'Celsius: ${celsius.toStringAsFixed(2)}, Fahrenheit: ${fahrenheit.toStringAsFixed(2)}, Kelvin: ${kelvin.toStringAsFixed(2)}');
  }
}

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}
