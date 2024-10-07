/* 3.- Estructura condicional.
Tengo una aplicación que ayuda a saber cuando cobramos cierto pago según el último digito de nuestro DNI, o sea corresponden unos 3 días por terminación en el mes, del 0 a 9.
primero, ¿en qué tipo de dato conviene guardar mi DNI? Pista: Usen “endsWith()” y un Switch con Strings.
//Ejemplo
void main() {
  switch('unString')
  {
    case 'unString':
      print('Hacemos algo');
      break;
    case 'otroString':
      print('Hacemos algo');
      break;
    default:
      print('Default');
      break;
  }
}

*/

void main() {
  getPaymentDate(dni: "40499813");
  getPaymentDateSecondSolution(dni: "40499817");
}

//PRIMERA SOLUCION

void getPaymentDate({required String dni}) {
  String digitType = getDigitType(dni: dni);
  switch (digitType) {
    case "firsDniType":
      print('Cobras el dia 1 de noviembre');
      break;
    case "secondDniType":
      print('Cobras el dia 2 de noviembre');
      break;
    case "thirdDniType":
      print('Cobras el dia 3 de noviembre');
      break;
    default:
      print('DNI Inválido, por favor vuelva a intentar');
      break;
  }
}

String getDigitType({required String dni}) {
  if (dni.endsWith("0") || dni.endsWith("1") || dni.endsWith("2"))
    return "firsDniType";
  if (dni.endsWith("3") || dni.endsWith("4") || dni.endsWith("5"))
    return "secondDniType";
  if (dni.endsWith("6") ||
      dni.endsWith("7") ||
      dni.endsWith("8") ||
      dni.endsWith("9")) return "thirdDniType";
  return "Invalid dni type";
}

// SEGUNDA SOLUCION

enum dniType { firstType, secondType, thirdType, invalidType }

Map<String, dniType> dniPosibleValues = {
  "0": dniType.firstType,
  "1": dniType.firstType,
  "2": dniType.firstType,
  "3": dniType.secondType,
  "4": dniType.secondType,
  "5": dniType.secondType,
  "6": dniType.thirdType,
  "7": dniType.thirdType,
  "8": dniType.thirdType,
  "9": dniType.thirdType,
};

void getPaymentDateSecondSolution({required String dni}) {
  dniType digitType = getDigitTypeSecondSolution(dni: dni);
  switch (digitType) {
    case dniType.firstType:
      print('Cobras el dia 1 de noviembre');
      break;
    case dniType.secondType:
      print('Cobras el dia 2 de noviembre');
      break;
    case dniType.thirdType:
      print('Cobras el dia 3 de noviembre');
      break;
    default:
      print('DNI Inválido, por favor vuelva a intentar');
      break;
  }
}

dniType getDigitTypeSecondSolution({required String dni}) {
  String lastDniValue = dni.substring(dni.length - 1);
  if (dniPosibleValues.containsKey(lastDniValue)) {
    return dniPosibleValues[lastDniValue]!;
  }
  return dniType.invalidType;
}
