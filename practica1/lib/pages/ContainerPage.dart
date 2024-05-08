import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget{
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context){
    return DefaultTextStyle(
      style: TextStyle(fontSize: 30.0),
      child: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: const Text("Hola mundo"),
        ),
      ),
    );
  }
}