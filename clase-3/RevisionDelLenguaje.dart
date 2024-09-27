//Operadores lógicos
void main() {
  bool tieneConexion = true;
  bool tieneBateria = false;
  
  if (tieneConexion && (tieneBateria || !tieneBateria)) {
    print('La aplicación puede continuar funcionando.');
  } else {
    print('La aplicación no puede continuar.');
  }
}

//If else
void main1() {
  int porcentajeBateria = 50;
  
  if (porcentajeBateria > 80) {
    print('La batería está llena.');
  } else if (porcentajeBateria > 50) {
    print('La batería está en buen estado.');
  } else {
    print('Necesitas cargar el dispositivo.');
  }
}

//operador ternatio
void main2() {
  int almacenamientoRestante = 5; // En GB
  
  String mensaje = almacenamientoRestante > 10 
                   ? 'Tienes suficiente espacio' 
                   : 'Debes liberar espacio';
  
  print(mensaje);
}

//Coalescencia Nula
void main4() {
  String? usuario; // Usuario aún no ingresado
  String mensaje = usuario ?? 'Bienvenido, invitado.';
  
  print(mensaje);
}

//Switch
void main5() {
  int opcion = 2;
  
  switch(opcion) {
    case 1:
      print('Has seleccionado la opción 1.');
      break;
    case 2:
      print('Has seleccionado la opción 2.');
      break;
    default:
      print('Opción no válida.');
  }
}

//Bucle For
void main6() {
  for (int i = 0; i < 5; i++) {
    print('Descargando archivo $i...');
  }
}
//ForIn
void main7() {
  List<String> tareas = ['Abrir aplicación', 'Cargar datos', 'Mostrar interfaz'];
  
  for (var tarea in tareas) {
    print('Realizando: $tarea');
  }
}

//ForEach
void main8() {
  List<int> numeros = [1, 2, 3, 4];
  
  numeros.forEach((numero) {
    print('Número: $numero');
  });
}
//Bucle While
void main9() {
  int bateria = 10;
  
  while (bateria > 0) {
    print('Nivel de batería: $bateria%');
    bateria--;
  }
  
  print('Batería agotada.');
}

//Do-While
void main10() {
  int intentos = 3;
  
  do {
    print('Intentando conexión... Intentos restantes: $intentos');
    intentos--;
  } while (intentos > 0);
}

//Break Continue
void main11() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue; // Salta el número 5
    }
    
    if (i == 8) {
      break; // Termina el bucle en 8
    }
    
    print(i);
  }
}

////////////////////////////Funcion Base
void saludar(String nombre) {
  print('Hola, $nombre');
}

void main12() {
  saludar('Juan');
}

//////////////////////////////////////Métodos para String, Listas, y Mapas
void main13() {
  // String
  String texto = 'Aplicación móvil';
  print(texto.toUpperCase()); // Convierte a mayúsculas
  
  // Lista
  List<int> nmeros = [1, 2, 3, 4];
  print(nmeros.length); // Muestra el número de elementos
  
  // Mapa
  Map<String, int> puntajes = {'Alice': 100, 'Bob': 80};
  print(puntajes.containsKey('Alice')); // Verifica si existe la clave 'Alice'
}


////////////////////////////////////////////////////////////////////////////////////Parámetros nombrados
void mostrarMensaje({required String titulo, required String contenido}) {
  print('Titulo: $titulo');
  print('Contenido: $contenido');
}

void main15() {
  mostrarMensaje(titulo: 'Bienvenido', contenido: 'Has iniciado sesion');
}

//Parámetro posicionales
void mostrarMensaje16(String titulo, String contenido) {
  print('Titulo: $titulo');
  print('Contenido: $contenido');
}

void main16() {
  mostrarMensaje16('Bienvenido', 'Esta es tu primera visita');
}

//Parametros Opcionales con {}
void mostrarMensaje11(String titulo, {String contenido = 'Sin contenido'}) {
  print('Titulo: $titulo');
  print('Contenido: $contenido');
}

void main17() {
  mostrarMensaje11('Bienvenido');
  mostrarMensaje11('Alerta', contenido: 'Debes actualizar tu perfil');
}

//Sobrecarga de Métodos en Otros Lenguajes y en Dart
void mostrarMensaje22(String titulo, [String? contenido]) {
  print('Titulo: $titulo');
  if (contenido != null) {
    print('Contenido: $contenido');
  } else {
    print('Contenido: no disponible');
  }
}

void main18() {
  mostrarMensaje22('Bienvenido');
  mostrarMensaje22('Alerta', 'Actualiza tu perfil');
}

//Parámetros posicionales Opcionales
void mostrarMensaje1(String titulo, [String contenido = 'Sin contenido']) {
  print('Titulo: $titulo');
  print('Contenido: $contenido');
}

void main19() {
  mostrarMensaje1('Alerta');
  mostrarMensaje1('Bienvenido', 'Tu sesion ha comenzado');
}

//Parámetros nombrados opcionales
void mostrarMensaje2({String titulo = 'Sin titulo', String contenido = 'Sin contenido'}) {
  print('Titulo: $titulo');
  print('Contenido: $contenido');
}

void main20() {
  mostrarMensaje2();
  mostrarMensaje(titulo: 'Notificacion', contenido: 'Tienes 5 mensajes nuevos');
}

//Funciones lambda o Funciones de una Linea
void main21() {
  var sumar = (int a, int b) => a + b;
  
  print('Suma de 3 + 5 = ${sumar(3, 5)}');
}


//Funciones anónimas
void ejecutarOperacion(void Function(int, int) operacion) {
  operacion(4, 7);
}

void main24() {
  ejecutarOperacion((a, b) {
    print('Resultado de la operacion: ${a + b}');
  });
}


//////////////METODOS COMUNES DE LAS LISTAS
void main25() {
  List<int> numeros = [10, 20, 30, 40, 50];

  // 1. add() - Agrega un elemento al final de la lista
  numeros.add(60);

  // 2. insert() - Inserta un elemento en una posición específica
  numeros.insert(1, 15);

  // 3. remove() - Elimina el primer elemento que coincide
  numeros.remove(30);

  // 4. removeAt() - Elimina un elemento en un índice específico
  numeros.removeAt(0);

  // 5. length - Devuelve la longitud de la lista
  print('Longitud: ${numeros.length}');

  // 6. contains() - Verifica si un valor existe en la lista
  print('Contiene 40: ${numeros.contains(40)}');

  // 7. indexOf() - Devuelve el índice del primer valor coincidente
  print('Indice de 50: ${numeros.indexOf(50)}');

  // 8. sort() - Ordena los elementos
  numeros.sort();
  print('Numeros ordenados:  ${numeros}');
  // 9. clear() - Elimina todos los elementos de la lista
  numeros.clear();

  // 10. isEmpty() - Verifica si la lista está vacía
  print('Esta vacia: ${numeros.isEmpty}');

  print(numeros);
}

////////////////////  MÉTODOS COMUNES PARA LOS MAPS
void main26() {
  Map<String, int> usuarios = {
    'Juan': 100,
    'Maria': 200,
    'Pedro': 300
  };

  // 1. putIfAbsent() - Agrega un par clave/valor SI la clave no existe
  usuarios.putIfAbsent('Ana', () => 400);

  // 2. update() - Actualiza el valor de una clave existente
  usuarios.update('Juan', (valor) => valor + 50); //ver el parámetro opcional

  // 3. remove() - Elimina un par clave/valor
  usuarios.remove('Pedro');

  // 4. containsKey() - Verifica si existe una clave
  print('Contiene la clave Maria: ${usuarios.containsKey('Maria')}');

  // 5. containsValue() - Verifica si existe un valor
  print('Contiene el valor 200: ${usuarios.containsValue(200)}');

  // 6. keys - Devuelve las claves del mapa
  print('Claves: ${usuarios.keys.toList()}');

  // 7. values - Devuelve los valores del mapa
  print('Valores: ${usuarios.values}');

  // 8. length - Devuelve el tamaño del mapa
  print('Tamaño del mapa: ${usuarios.length}');

  // 9. clear() - Elimina todos los elementos
   usuarios.clear();

  // 10. isEmpty() - Verifica si el mapa está vacío
  print('Esta vacio: ${usuarios.isEmpty}');

  print(usuarios);
}

////////////////////////////Metódos de los sets
void main27() {
  Set<int> numeros = {1, 2, 3, 4, 5};

  // 1. add() - Agrega un elemento al set
  numeros.add(6);

  // 2. remove() - Elimina un elemento del set
  numeros.remove(2);

  // 3. contains() - Verifica si un elemento está presente en el set
  print('Contiene 3: ${numeros.contains(3)}');

  // 4. length - Devuelve el tamaño del set
  print('Tamaño del set: ${numeros.length}');

  // 5. union() - Une dos sets
  Set<int> otrosNumeros = {7, 8, 9};
  Set<int> unionNumeros = numeros.union(otrosNumeros);
  print('Union de sets: $unionNumeros');

  // 6. intersection() - Devuelve la intersección de dos sets
  Set<int> interseccion = numeros.intersection({3, 4, 10});
  print('Interseccion: $interseccion');

  // 7. difference() - Devuelve la diferencia entre dos sets
  Set<int> diferencia = numeros.difference({1, 5});
  print('Diferencia: $diferencia');

  // 8. clear() - Elimina todos los elementos del set
  // numeros.clear();

  // 9. isEmpty() - Verifica si el set está vacío
  print('Esta vacio: ${numeros.isEmpty}');

  // 10. isNotEmpty() - Verifica si el set no está vacío
  print('No esta vacio: ${numeros.isNotEmpty}');

  print(numeros);
}

//////////////////////Métodos For Each y Where
void main28listas() {
  List<int> numeros = [1, 2, 3, 4, 5];

  // forEach() - Itera sobre los elementos
  numeros.forEach((numero) {
    print('Numero: $numero');
  });

  // where() - Filtra los elementos basándose en una condición
  var numerosPares = numeros.where((numero) => numero % 2 == 0);
  print('Numeros pares: $numerosPares');
}

void main28mapas() {
  Map<String, int> edades = {'Ana': 25, 'Luis': 30, 'Carlos': 35};

  // Uso de forEach en un mapa
  edades.forEach((clave, valor) {
    print('$clave tiene $valor años');
  });
}
void main28sets() {
  Set<String> ciudades = {'Londres', 'Paris', 'Tokio'};

  // Uso de forEach en un set
  ciudades.forEach((ciudad) {
    print('Ciudad: $ciudad');
  });
}

void main28mapasWhere() {
  Map<String, int> edades = {'Ana': 25, 'Luis': 30, 'Carlos': 35};

  // Filtrar los valores del mapa usando where
  var mayoresDe30 = edades.values.where((edad) => edad > 30);
  print('Personas con mas de 30 años: $mayoresDe30');
}
void main28setwhere() {
  Set<int> numeros = {1, 2, 3, 4, 5, 6};

  // Filtrar los elementos que sean pares
  var pares = numeros.where((numero) => numero % 2 == 0);
  print('Numeros pares: $pares');
}



///////////////// METODO .map
///En listas
void mainmapListas() {
  List<int> numeros = [1, 2, 3, 4, 5];

  // Usamos .map() para transformar cada numero multiplicandolo por 2
  var numerosTransformados = numeros.map((numero) => numero * 2);

  // El resultado es un iterable, pero podemos convertirlo en una lista
  List<int> listaTransformada = numerosTransformados.toList();

  print('Numeros originales: $numeros');
  print('Numeros transformados: $listaTransformada');
}
void mainotro() {
  List<String> palabras = ['perro', 'gato', 'elefante'];

  // Usamos .map() para convertir cada palabra en mayúsculas
  var palabrasMayusculas = palabras.map((palabra) => palabra.toUpperCase()).toList();

  print('Palabras originales: $palabras');
  print('Palabras en mayusculas: $palabrasMayusculas');
}

///En sets
void mainmapmethod() {
  Set<int> numeros = {1, 2, 3, 4};

  // Transformar cada numero multiplicandolo por 10
  var transformados = numeros.map((numero) => numero * 10);
  print('Numeros transformados: $transformados');
}
void mainmapmaps() {
  Map<String, int> usuarios = {'Ana': 25, 'Luis': 30};

  // Transformar claves y valores
  var nuevoMapa = usuarios.map((clave, valor) 
    {
      return MapEntry(clave.toUpperCase(), valor + 5);
    });
  
  print('Mapa transformado: $nuevoMapa');
}


///////////////////////////bucle for en Listas mapas y sets
void main29Listas() {
  List<String> frutas = ['manzana', 'banana', 'naranja'];
  
  for (int i = 0; i < frutas.length; i++) {
    print('Fruta: ${frutas[i]}');
  }
}
void main29Mapas() {
  Map<String, int> edades = {'Ana': 25, 'Luis': 30, 'Carlos': 35};
  
  for (String clave in edades.keys) { //Le estamos pasando un iterable
    print('$clave tiene ${edades[clave]} años');
  }
}

void main29Sets() {

  Set<String> ciudades = {'Londres', 'Paris', 'Tokio'};
  
  for (var ciudad in ciudades) {
    print('Ciudad: $ciudad');
  }
}

/////////////////////////Métodos Comunes en strings
void main31() {
  String texto = "Hola Mundo";

  // 1. length - Devuelve la longitud del string
  print('Longitud: ${texto.length}');  // Salida: 10

  // 2. toUpperCase() - Convierte todo el string a mayúsculas
  print('En mayusculas: ${texto.toUpperCase()}');  // Salida: HOLA MUNDO

  // 3. toLowerCase() - Convierte todo el string a minúsculas
  print('En minusculas: ${texto.toLowerCase()}');  // Salida: hola mundo

  // 4. contains() - Verifica si un substring está presente
  print('Contiene "Mundo": ${texto.contains("Mundo")}');  // Salida: true

  // 5. replaceAll() - Reemplaza todas las ocurrencias de un substring
  print('Reemplaza "Hola" con "Adios": ${texto.replaceAll("Hola", "Adios")}');  // Salida: Adios Mundo

  // 6. substring() - Extrae una parte del string
  print('Substring desde el indice 0 hasta el 4: ${texto.substring(0, 4)}');  // Salida: Hola

  // 7. split() - Divide el string en una lista usando un delimitador
  List<String> partes = texto.split(' ');
  print('Partes del string: $partes');  // Salida: [Hola, Mundo]

  // 8. startsWith() - Verifica si el string comienza con un determinado substring
  print('Comienza con "Hola": ${texto.startsWith("Hola")}');  // Salida: true

  // 9. trim() - Elimina espacios en blanco al inicio y al final del string
  String textoConEspacios = "   Espacios   ";
  print('Texto sin espacios: "${textoConEspacios.trim()}"');  // Salida: Espacios

  // 10. indexOf() - Devuelve el índice de la primera aparición de un substring
  print('Indice de "Mundo": ${texto.indexOf("Mundo")}');  // Salida: 5
}



