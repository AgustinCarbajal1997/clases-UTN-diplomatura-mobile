// Ejercicio 1
//
// Consigna:
// Crea un programa que valide un usuario y contraseña utilizando un mapa (Map<String, String>).
// Si el usuario y la contraseña son correctos, el programa debe imprimir "Acceso concedido".
// De lo contrario, imprimir "Acceso denegado".
//
// Datos para trabajar:
// Map<String, String> usuarios = {
//     'usuario1': 'password123',
//     'usuario2': 'abc123',
// };
void main() {
  print(login("Agustin", "Carbajal"));
  print(login("usuario1", "password123"));
  print(login("usuario2", "abc123"));
}

// EJERCICIO 1
Map<String, String> usuarios = {
  'usuario1': 'password123',
  'usuario2': 'abc123',
};
String login(String username, String password) {
  if (usuarios.containsKey(username) && usuarios[username] == password) {
    return "Acceso CONCEDIDO";
  }
  return "Acceso DENEGADO";
}
