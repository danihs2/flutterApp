import 'package:first_app/presentations/screens/inicio/inicio.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Inicio(),
        ),
      ),
    );
  }
}