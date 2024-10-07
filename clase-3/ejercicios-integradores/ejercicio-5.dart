/* 
5.- Recorrer y acceder a mapas
Estoy haciendo una aplicación de un restaurante. En el cual hay una lista de ingredientes que es “plato1”. 
Por otra parte, tengo un mapa del tipo Map<String, int> que guarda el ingrediente y las unidades que hay de ese 
ingrediente. Necesitamos una función que reciba un plato y modifique la cantidad de ingredientes que quedan de cada 
uno. Si no hay suficientes ingredientes de algun tipo, la función debe devolver “No hay suficientes ingredientes de 
“ingrediente” y si logra descontar todos de manera exitosa debe devolver un mensaje que diga “Inventario actualizado”. 
Recurso: Ingredientes e Inventario para probar la función.
Nota: Cuando acceder a un valor de un diccionario lo hacemos según la clave correspondiente, puede pasar que si 
queremos acceder a ese diccionario dentro de un bucle tengamos que asegurarle al mismo que el dato que le estamos 
pidiendo nunca va a ser nulo. Si estamos seguros de esto podemos agregar un ! al final del comando. (A diferencia de 
si fuera al principio lo cual seria la negación para un booleano)
Ejem: if (inventario[‘stringIngrediente’]! > 0) {}
Una función de los mapa que podría ser de utilidad (o no según cómo armen el programa) es revisar si tal clave (una “key”) está en el mapa.
Ejem: if (inventario.containsKey(‘stringIngrediente’)) {}

*/

// Listas de ingredientes para platos
List<String> pizzaMargherita = ["tomate", "queso mozzarella", "albahaca"];

List<String> ensaladaCesar = [
  "lechuga",
  "pollo",
  "queso parmesano",
  "croutones",
  "aderezo césar"
];

List<String> tacosDeCarne = [
  "tortilla",
  "carne",
  "cebolla",
  "cilantro",
  "salsa"
];

// Mapa de inventario de ingredientes
Map<String, int> inventario = {
  "tomate": 20,
  "queso mozzarella": 10,
  "albahaca": 5,
  "lechuga": 15,
  "pollo": 8,
  "queso parmesano": 7,
  "croutones": 12,
  "aderezo césar": 6,
  "tortilla": 25,
  "carne": 10,
  "cebolla": 10,
  "cilantro": 8,
  "salsa": 10
};

void main() {
  print(modificarCantidadDeIngredientes(plato: pizzaMargherita));
}

String modificarCantidadDeIngredientes({required List<String> plato}) {
  Map<String, int> copiaInventario = {};
  String? error;
  for (String ingrediente in plato) {
    if (inventario.containsKey(ingrediente)) {
      if (inventario[ingrediente] == 0) {
        error = "No hay suficiente ingredientes";
        break;
      } else {
        copiaInventario = {...copiaInventario, ingrediente: 1};
      }
    } else {
      error = "Hay un ingrediente en el listado que no existe";
      break;
    }
  }

  if (error != null) {
    return error;
  }

  copiaInventario.forEach((ingrediente, cantidadADescontar) {
    inventario.update(ingrediente, (cv) => cv - cantidadADescontar);
  });

  return "Inventario actualizado: $inventario";
}
