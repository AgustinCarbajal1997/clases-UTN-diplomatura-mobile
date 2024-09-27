void main() {
  List<int> numeros = [10, 20, 30, 40, 50, 50];

  int numeroSolo = 3;
  bool existTen = numeros.contains(10);

  print(
      "Este es el indice de la primera aparacion de 50: ${numeros.indexOf(50)}");

  print(existTen);
  print(numeros[3]);

  numeros.add(60);
  numeros.insert(2, 3);

  numeros.remove(30);

  numeros.removeAt(0);

  print(numeros);
  print(numeros.contains(40));
  print(numeros.where((x) => x == 50).toList());
  print('La longitud de la lista es ${numeros.length + numeroSolo}');
}
