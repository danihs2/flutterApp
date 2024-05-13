import 'package:flutter/material.dart';

class WidgetList extends StatefulWidget {
  const WidgetList({super.key});

  @override
  State<WidgetList> createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetList> {
  double widthPantalla = 0;
  // Images from: https://rickandmortyapi.com/api/character/avatar/${i+1}.jpeg
  final String imageURL = "https://rickandmortyapi.com/api/character/avatar/";
  final String formatIMG = ".jpeg";
  final titleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  final subtitleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w100
  );

  @override
  Widget build(BuildContext context) {
    widthPantalla = MediaQuery.of(context).size.width-50;
    final List<String> nombres = <String>['Rick', 'Morty', 'Summer'];
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        children: <Widget>[
          Text("Characters", style: titleStyle),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (i) => bloquesPortada("$imageURL${i+1}$formatIMG", nombres[i], "Subtitle"))
          ),
        ],
      ),
    );
  }
  Container bloquesPortada(String image, String title, String subtitle){
    return Container(
      margin: EdgeInsets.only(left: widthPantalla*0.03),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image.network(
              image, 
              width: widthPantalla*0.3,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(title, style: subtitleStyle),
        ],
      ),
    );
  }
}