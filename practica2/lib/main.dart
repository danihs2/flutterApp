import 'package:flutter/material.dart';
import 'package:practica2/widgets/formulario_pago.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inputs - Practica 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: const FormularioPago(),
      ),
    );
  }
}