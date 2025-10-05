
//suma de dos números introducidos por el usuario en donde se muestra el resultado al final..
 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suma de dos números',
      home: SumaNumeros(),
    );
  }
}

class SumaNumeros extends StatefulWidget {
  @override
  _SumaNumerosState createState() => _SumaNumerosState();
}

class _SumaNumerosState extends State<SumaNumeros> {
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();
  int resultado = 0;

  void sumar() {
    setState(() {
      int n1 = int.tryParse(numero1Controller.text) ?? 0;
      int n2 = int.tryParse(numero2Controller.text) ?? 0;
      resultado = n1 + n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Suma de dos números')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numero1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: numero2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sumar,
              child: Text('Sumar'),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
