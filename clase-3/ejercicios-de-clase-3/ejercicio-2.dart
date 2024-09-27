// EJERCICIO 2
//
// Consigna:
// Crea un programa de consola que simule una calculadora básica.
// El usuario puede seleccionar entre sumar, restar, multiplicar o dividir dos números mediante un menú.
// Nota: Una posible solución (aunque pueden generar otras), crear una función que reciba los datos,
// y que a su vez evalúe el tipo de operación en un Switch.
//
// Ejemplo de datos que recibe la función:
// int a = 10;
//   int b = 5;
//   String operacion = 'sumar';

void main() {
  print(calculate(a: 1, b: 2, op: "suma"));
  print(calculate(a: 3, b: 2, op: "resta"));
  print(calculate(a: 2, b: 2, op: "multiplicacion"));
  print(calculate(a: 10, b: 2, op: "division"));
  print(calculate(a: 10, b: 2, op: "divisionn"));
}

//EJERCICIO 2
Map<String, Function(double, double)> operations = {
  'suma': (double a, double b) => a + b,
  'resta': (double a, double b) => a - b,
  'multiplicacion': (double a, double b) => a * b,
  'division': (double a, double b) => a / b
};
dynamic calculate({required double a, required double b, required String op}) {
  if (!operations.containsKey(op)) return "No existe la operación agregada";
  return operations[op]!(a, b);
}
