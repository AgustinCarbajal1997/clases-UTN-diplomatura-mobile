// Ejercicio 8:
//
// Consigna:
// Crea un inventario de productos y sus cantidades.
// El programa debe permitir actualizar la cantidad de un producto, sumando o restando unidades.

Map<String, int> inventario = {
  'Laptop': 10,
  'Smartphone': 25,
  'Televisor': 5,
  'Lavadora': 8,
  'Mesa': 12,
  'Silla': 20,
  'Reloj': 50,
  'Bolso': 15,
  'Cafetera': 7,
  'Lámpara': 18,
};

void main() {
  updateInventory(op: "sumar", key: "Laptop", quantity: 10);
  updateInventory(op: "sumar", key: "Televisor", quantity: 7);
  updateInventory(op: "restar", key: "Mesa", quantity: 10);
  updateInventory(op: "restar", key: "Cafetera", quantity: 9);
  print(inventario);
}

void updateInventory(
    {required String op, required String key, required int quantity}) {
  switch (op) {
    case "sumar":
      inventario.update(key, (currentQuantity) => currentQuantity + quantity);
      break;
    case "restar":
      inventario.update(
          key,
          (currentQuantity) => (currentQuantity - quantity) >= 0
              ? currentQuantity - quantity
              : 0); // logica, no me deberia dar menor a 0
      break;
    default:
      null;
  }
}
