import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';

class PaginaPDF extends StatelessWidget {
  final Libro libro;
  const PaginaPDF({super.key, required this.libro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${libro.nombre}'),
      ),
      body: SfPdfViewer.network('${libro.descripcion}'),
    );
  }
}
