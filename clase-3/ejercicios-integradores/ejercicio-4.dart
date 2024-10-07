/*

4.- Habilidad de abstracción: Convertir información en estructuras condicionales.
Por la misma línea estamos creando una aplicación que puede sevir tanto para una campaña de concientización sobre la salud, o para una obra social. 
En la misma introduciríamos datos cómo sexo biológico, edad, y algunos antecedentes familiares para ajustar nuestras recomendaciones los mejor posible: Información.
Crear las estructuras condicionales necesarias para poder procesar 
los datos del usuario y recomendar correctamente a cada usuario según sus características 
que es lo recomendado. Además una vez creado esto se debe encapsular el código en una función que reciba los parámetros necesarios para ejecutarse. 
 */

void main() {
  print(obtenerRecomendacion(sexo: "M", edad: 27, antecedentes: false));
  print(obtenerRecomendacion(sexo: "F", edad: 53, antecedentes: false));
  print(obtenerRecomendacion(sexo: "F", edad: 27, antecedentes: true));
  print(obtenerRecomendacion(sexo: "F", edad: 55, antecedentes: false));
}

String obtenerRecomendacion(
    {required String sexo, required int edad, required bool antecedentes}) {
  if (sexo == "F") {
    if (antecedentes) {
      return "Comenzar con las mamografias 10 años antes de la edad en que se diagnosticó a su pariente​ ";
    } else {
      if (edad >= 40 && edad <= 44) {
        return "Opación para comenzar opcionalmente con la mamografia";
      }
      if (edad >= 45 && edad <= 54) {
        return "Se recomienda mamografia anual";
      }
      if (edad >= 55) {
        return "Pueden optar por continuar con mamografías anuales o cambiarlas a cada dos años​";
      }
      return "No hace falta estudios de cancer de mama";
    }
  }

  if (sexo == "M") {
    if (antecedentes) {
      return "Realizar estudios medicos a partir de los 35 años";
    }
    return "No hace falta estudios de cancer de mama";
  }

  return "Datos inválidos";
}
