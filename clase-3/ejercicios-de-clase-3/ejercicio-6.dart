// Ejercicio 6:
//
// Consigna:
// Crea un programa que permita al usuario buscar productos por su categoría dentro de un mapa que contiene productos y sus categorías.
//
// Datos:
Map<String, String> productos = {
  'Notebook': 'Tecnologia',
  'Smartphone': 'Tecnologia',
  'Televisor': 'Electrodomesticos',
  'Lavadora': 'Electrodomesticos',
  'Mesa': 'Muebles',
  'Silla': 'Muebles',
  'Reloj': 'Accesorios',
  'Bolso': 'Accesorios',
  'Cafetera': 'Electrodomesticos',
  'Lámpara': 'Decoracion'
};

void main() {
  print(
      "Productos de tecnologia: ${getProductsByCategory(category: "Tecnologia")}");
  print("Productos de muebles: ${getProductsByCategory(category: "Muebles")}");
  print(
      "Productos de decoracion: ${getProductsByCategory(category: "Decoracion")}");
}

List<String> getProductsByCategory({required String category}) {
  List<String> productsByCategory = [];
  productos.forEach((key, value) {
    if (value == category) productsByCategory.add(key);
  });
  return productsByCategory;
}
