import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Calculadora",
        home: Scaffold(
          backgroundColor: Color(0xFF283637),
          body: Column(),

        ),
      );
  }
}