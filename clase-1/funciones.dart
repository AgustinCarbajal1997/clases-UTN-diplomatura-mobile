void main() {
  var midouble = 4.3;

  miFuncion4(
    3,
    midouble,
    texto1: 'hola',
    varUno: 2,
  );

  verificacion('minombre@correo.com');
}
//Parametros Obligatorios y opcionales
//Parametros Posicionales y Nombrados

void verificacion(String correo) {
  String mensaje;

  mensaje = (correo.contains('@') && correo.contains('.com'))
      ? 'Esto es un correo'
      : 'Esto no es un correo';
  //condición ? respuestaPorVerdadero : respuestaPorNo

  if (correo.contains('@') && correo.contains('.com')) {
    mensaje = 'Esto es un correo';
  } else {
    mensaje = 'Esto es un correo';
  }

  print(mensaje);
}

void miFuncion4(int varDos, double varPos,
    {int varUno = 8, required String texto1}) {
  if ((varDos) > 3) {
    ///Hago A
  } else {
    //Hago B
  }
}