class Categoria {
  int id;
  String nombre;
  DateTime createdAt;
  DateTime updatedAt;
  String? descripcion;

  Categoria({
    required this.id,
    required this.nombre,
    required this.createdAt,
    required this.updatedAt,
    this.descripcion,
  });
}
