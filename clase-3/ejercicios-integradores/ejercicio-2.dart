/* 
2.- Entender el tipo de variable según el dato.
La aplicación de ejercicio nunca puede reemplazar a un profesional, por lo cual necesitamos que por un
 lado se muestre un mensaje de advertencia, personalizado con el nombre del paciente ¿En que tipo de variable se guardaría?. 
 Y vamos a tener una sección de salud donde el usuario vaya clickando qué controles se ha hecho y cuales no von que estructura de 
 datos guardarías esa checklist?¿Y de qué elementos estaría conformada?

*/
String nombre = "Agustin";

Map<String, bool> chequeos = {
  "corazon": false,
  "respiratorios": false,
  "neurologicos": false,
  "columna": false,
};

void main() {
  print(warning(nombre));
  onHandlePressChequeos(chequeo: "corazon", modificacion: true);
  onHandlePressChequeos(chequeo: "columna", modificacion: true);
  print(chequeos);
}

String warning(String nombre) {
  return "Sr: $nombre, recuerde que la app de ejercicios no puede reemplazar a un profesional";
}

void onHandlePressChequeos(
    {required String chequeo, required bool modificacion}) {
  chequeos.update(chequeo, (currentValue) => modificacion);
}
