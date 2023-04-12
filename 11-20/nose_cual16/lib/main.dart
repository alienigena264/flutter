import 'package:flutter/material.dart';
import 'package:nose_cual16/widgets/formulario_pago.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pago con tarjeta'),
        ),
        body: const FormCard(),
        ),
    );
  }
}