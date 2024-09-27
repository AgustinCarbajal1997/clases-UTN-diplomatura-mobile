void main() {
  Map<String, int> usuarios = {
    "Juan": 32,
    "Maria": 40,
    "Pedro": 55,
  };

  usuarios.putIfAbsent("Victoria", () => 40);
  print(usuarios);
  usuarios.update("Juan", (valor) => valor + 55);
  print(usuarios);
  usuarios.remove("Pedro");
  print(usuarios);
  print(usuarios.containsKey("Pedro"));
  print(usuarios["Maria"]);
  print(usuarios.keys.toList());

  List<int> numeros = [1, 2, 3, 4, 5];

  numeros.forEach((x) {
    print("El numero es: $x");
  });

  for (var numero in numeros) {
    print("Numero desde for in: $numero");
  }

  usuarios.forEach((key, value) {
    print("El numero es: $key $value");
  });
}
