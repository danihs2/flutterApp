import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final Function callback;
  final String text;
  final double textSize;
  final Color? buttonColor;
  final IconData? icon;
  final BorderRadius borderRadius;
  const CalcButton({
      Key? key,
      required this.callback,
      required this.text,
      this.textSize = 28,
      this.buttonColor = Colors.white,
      this.icon,
      this.borderRadius = const BorderRadius.all(Radius.zero),
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: () => {callback(text)},
          style: TextButton.styleFrom(
            backgroundColor: buttonColor == Colors.white ? null : buttonColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            padding: const EdgeInsets.all(16.0),
            textStyle: TextStyle(fontSize: textSize), // Aplicar el tamaño de texto aquí
          ),
          child: icon != null 
          ? Icon(
              icon,
              size: textSize, // Tamaño del icono
            ) 
          : Text(
              text,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: textSize,
                )
              ),
            )
        ),
      ),
    );
  }
}
