//Parametros nombrados
void mifuncion2(int valor, {String edad = "Sin Edad"})
{
  print(edad);
}
void mifuncion3(int valor, [String edad = "Sin Edad"])
{
  print(edad);
}
void mifuncion(int valor, String cadena)
{
  
}

void main() {
  mostrarNoticia("Ganador formula 1");
}

void mostrarNoticia(String titulo, [String? contenido]){
  print("Titulo: $titulo");
  if(contenido != null){
    print("Contenido: $contenido");
  } else {
    print("No hay contenido");
  }
}