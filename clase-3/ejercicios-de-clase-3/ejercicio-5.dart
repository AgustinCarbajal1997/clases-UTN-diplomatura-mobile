// Ejercicio 5:
// Consigna:
// Crea un programa que permita al usuario convertir una temperatura de grados Celsius a Fahrenheit y viceversa.
// (Crear una función para cada operación)
void main() {
  print(celsiusToFahrenheit(celsius: 30.00));
  print(fahrenheitToCelsius(fahrenheit: 80.00));
}

String celsiusToFahrenheit({required double celsius}) {
  return "${celsius}°C es equivalente a ${(celsius * 9 / 5) + 32}°F";
}

String fahrenheitToCelsius({required double fahrenheit}) {
  return "${fahrenheit}°F es equivalente a ${((fahrenheit - 32) * 5 / 9).toStringAsFixed(2)}°C";
}
