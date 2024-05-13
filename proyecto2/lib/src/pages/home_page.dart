import 'package:flutter/material.dart';
import 'package:proyecto2/src/widgets/headerWidget.dart';
import 'package:proyecto2/src/widgets/widget_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          WidgetList(),
        ],
      )
    );
  }
}