// Ejercicio 3
//
// Consigna:
// Crea una lista de tareas donde se pueda agregar, mostrar y eliminar tareas.
// Cada tarea tendrá un título y una descripción. Permitir eliminar por nombre de tarea.
//
// Ejemplo de Datos:
// List<Map<String, String>> tareas =
// [
//     {'titulo': 'Comprar comida', 'descripcion': 'Ir al supermercado'},
//     {'titulo': 'Estudiar', 'descripcion': 'Repasar Flutter'},
//
// ];

class ToDoList {
  List<Map<String, String>> tareas = [];

  void add({required String titulo, required String descripcion}) {
    this
        .tareas
        .add(<String, String>{"titulo": titulo, "descripcion": descripcion});
  }

  void remove({required String titulo}) {
    this.tareas.removeWhere((tarea) => tarea["titulo"] == titulo);
  }

  void show() {
    tareas.forEach((tarea) => print(
        "Titulo: ${tarea["titulo"]}, descripcion: ${tarea["descripcion"]}"));
  }
}

void main() {
  ToDoList toDoListAgustin = ToDoList();

  // Agregar
  print("AGREGAR---------");
  toDoListAgustin.add(
      titulo: "Estudia", descripcion: "Se debe repasar Flutter");
  toDoListAgustin.add(
      titulo: "Comprar comida", descripcion: "Ir al supermercado");
  toDoListAgustin.add(
      titulo: "Trabajar", descripcion: "Agregar nueva feature mobile");
  toDoListAgustin.show();
  // Remover
  print("REMOVER----------");
  toDoListAgustin.remove(titulo: "Trabajar");
  toDoListAgustin.show();
}
