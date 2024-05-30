import
 
'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class
 
MyApp
 
extends
 
StatelessWidget
 
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplo de showDialog"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Muestra el diálogo
              
            },
            child: const Text("Mostrar diálogo"),
          ),
        ),
      ),
    );
  }
}