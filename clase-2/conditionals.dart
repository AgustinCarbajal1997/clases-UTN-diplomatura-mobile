void main() {
  bool tieneConexion = true;
  bool tieneBateria = false;

  if (tieneConexion && tieneBateria) {
    print("Se cumple");
  } else if (tieneConexion && !tieneBateria) {
    print("entra a else if");
  } else {
    print("No cumple con los requisitos");
  }

  String mensajes = 10 > 5 ? "Es mayor a 5" : "No es mayor a 5";
  print(mensajes);

  // coalescencia de nulls
  String? usuarios;
  String manejonull = usuarios ?? "No tiene nombre el usuario";
  print(manejonull);
  
  const opcion = 3;
  switch (opcion) {
    case 1:
      print("Opcion 1");
    case 2:
      print("Opcion 2");
    case 3:
      print("Opcion 3");
  }
}