// Ejercicio 7:
//
// Consigna
// Crea una lista de usuarios con su nombre y edad. El programa debe filtrar los usuarios mayores de 30 años y mostrarlos.
//
// Datos
List<Map<String, dynamic>> usuarios = [
  {'nombre': 'Ana', 'edad': 25},
  {'nombre': 'Luis', 'edad': 35},
  {'nombre': 'Carlos', 'edad': 40},
  {'nombre': 'Juan', 'edad': 28},
  {'nombre': 'Maria', 'edad': 32},
  {'nombre': 'Laura', 'edad': 29},
  {'nombre': 'Pablo', 'edad': 45},
  {'nombre': 'Sofia', 'edad': 27},
  {'nombre': 'Alberto', 'edad': 33},
  {'nombre': 'Isabel', 'edad': 41},
];

void main() {
  print(filterUsers(op: "mayor", value: 39));
  print(filterUsers(op: "menor", value: 30));
  print(filterUsers(op: "igual", value: 33));
  print(filterUsers(op: "mayorigual", value: 85));
}

Map<String, Function(int)> operations = {
  'mayor': (int value) =>
      usuarios.where((user) => user["edad"] > value).toList(),
  'menor': (int value) =>
      usuarios.where((user) => user["edad"] < value).toList(),
  'igual': (int value) =>
      usuarios.where((user) => user["edad"] == value).toList(),
};

dynamic filterUsers = ({required String op, required int value}) {
  if (!operations.containsKey(op)) return "No existe la operacion";
  return operations[op]!(value);
};
