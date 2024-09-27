// Ejercicio 4:
//
// Consigna:
// Crea una lista de productos con nombre y precio.
// Filtra los productos que cuestan más de 50 y muestra los resultados.
//
// Posible lista de datos (Noten el "dynamic")

List<Map<String, dynamic>> productos = [
  {'nombre': 'Producto 1', 'precio': 30.00},
  {'nombre': 'Producto 2', 'precio': 60.00},
  {'nombre': 'Producto 3', 'precio': 80.00}
];
void main() {
  print(filterProducts(op: "mayor", value: 10.00));
  print(filterProducts(op: "menor", value: 60.00));
  print(filterProducts(op: "igual", value: 30.00));
  print(filterProducts(op: "mayorigual", value: 100.00));
}

Map<String, Function(double)> operations = {
  'mayor': (double value) =>
      productos.where((prod) => prod["precio"] > value).toList(),
  'menor': (double value) =>
      productos.where((prod) => prod["precio"] < value).toList(),
  'igual': (double value) =>
      productos.where((prod) => prod["precio"] == value).toList(),
};

dynamic filterProducts = ({required String op, required double value}) {
  if (!operations.containsKey(op)) return "No existe la operacion";
  return operations[op]!(value);
};
