import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> nombres = <String>['Jaime', 'Pancho', 'Mark'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: nombres.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 60,
            child: Center(child: Text("Texto ${nombres[index]}")),
          );
        },
      ),
    );
  }
}