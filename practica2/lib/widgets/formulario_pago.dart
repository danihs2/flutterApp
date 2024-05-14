import 'package:flutter/material.dart';

class FormularioPago extends StatefulWidget {
  const FormularioPago({super.key});

  @override
  State<FormularioPago> createState() => _FormularioPagoState();
}

class _FormularioPagoState extends State<FormularioPago>{
  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        Image.network('https://www.upsieutoc.com/images/2020/06/27/credit-card.png', width: 200, height: 200, fit: BoxFit.cover), // Image.network('https://www.upsieutoc.com/images/2020/06/27/credit-card.png', width: 200, height: 200, fit: BoxFit.cover)
        const SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Nombre del titular',
            hintText: 'Nombre del titular',
            icon: Icon(Icons.person),
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Número de tarjeta',
            hintText: 'Número de tarjeta',
            icon: Icon(Icons.credit_card),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Fecha de expiración',
                  hintText: 'MM/AA',
                  icon: Icon(Icons.calendar_today),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'CVV',
                  hintText: 'CVV',
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}