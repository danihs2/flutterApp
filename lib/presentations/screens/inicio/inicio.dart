import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido a la aplicación',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              Text(
                'Pulsa el botón de su preferencia',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}