// Ejercicio 9:
//
// Consigna:
// Crea una lista de tareas, cada una con un título y una prioridad (alta, media o baja).
// Permite al usuario filtrar las tareas por su prioridad. (Fijensé que es muy parecido al 6).
//
// Datos:

List<Map<String, String>> tareas = [
  {'titulo': 'Estudiar', 'prioridad': 'alta'},
  {'titulo': 'Limpiar', 'prioridad': 'baja'},
  {'titulo': 'Trabajar', 'prioridad': 'media'},
  {'titulo': 'Comprar comida', 'prioridad': 'alta'},
  {'titulo': 'Ejercicio', 'prioridad': 'baja'},
  {'titulo': 'Leer', 'prioridad': 'media'},
  {'titulo': 'Cocinar', 'prioridad': 'baja'},
  {'titulo': 'Jugar videojuegos', 'prioridad': 'media'},
  {'titulo': 'Dormir', 'prioridad': 'alta'},
  {'titulo': 'Visitar amigos', 'prioridad': 'media'},
];

void main() {
  print("Tareas con prioridad alta: ${getTasksByPriority(priority: "alta")}");
  print("Tareas con prioridad media: ${getTasksByPriority(priority: "media")}");
  print("Tareas con prioridad baja: ${getTasksByPriority(priority: "baja")}");
}

List<String> getTasksByPriority({required String priority}) {
  List<String> tasksByPriority = [];
  tareas.forEach((task) {
    if (task["prioridad"] == priority)
      tasksByPriority.add(task["titulo"] ?? "");
  });
  return tasksByPriority;
}
