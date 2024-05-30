class Libro {
  int id;
  String nombre;
  String autor;
  String descripcion;
  String fotoPortada;
  int categoriaId;
  DateTime createdAt;
  DateTime updatedAt;

  Libro({
    required this.id,
    required this.nombre,
    required this.autor,
    required this.descripcion,
    required this.fotoPortada,
    required this.categoriaId,
    required this.createdAt,
    required this.updatedAt,
  });
}
