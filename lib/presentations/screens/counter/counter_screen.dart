import 'dart:ffi';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$clickCounter", style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            const Text("Clicks", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100)),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            clickCounter++;
          });
        },
        child: Icon(Icons.plus_one),
      )
    );
  }
}