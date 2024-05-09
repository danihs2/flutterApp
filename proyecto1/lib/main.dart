import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:proyecto1/widgets/CalcButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _history = "";
  String _expression = "";
  void clear(String text) {
    setState(() {
      _expression = "";
    }); 
  }
  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    }); 
  }
  void evalute(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }
  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculadora",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontSize: 24, color: Color(0xFF545F61))),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: (Text(
                    _expression,
                    style: GoogleFonts.rubik(
                        textStyle:
                            const TextStyle(fontSize: 24, color: Colors.white)),
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: "AC",
                    callback: allClear,
                    textSize: 20,
                    buttonColor: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  CalcButton(
                    text: "C",
                    callback: clear,
                    textSize: 24,
                    icon: Icons.backspace_outlined,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  CalcButton(
                    text: "%",
                    callback: numClick,
                    textSize: 20,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  CalcButton(
                    text: "/",
                    callback: numClick,
                    textSize: 20,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: "7",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "8",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "9",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "x",
                    callback: allClear,
                    textSize: 24,
                    icon: Icons.clear_sharp,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
