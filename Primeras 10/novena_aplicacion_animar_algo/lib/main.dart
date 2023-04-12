import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.deepPurpleAccent;
  BorderRadius _borderRadius = BorderRadius.circular(10);
  String _hexColor = '';

  int random2(){
    final random = Random();
    return random.nextInt(255);
  }

  void _cambiarContainer (){
    final random = Random();
    _width=random.nextInt(450).toDouble();
    _height=random.nextInt(450).toDouble();
    _color=Color.fromRGBO(random2(), random2(), random2(), 1);
    _borderRadius=BorderRadius.circular(random.nextInt(35).toDouble());
    _hexColor = _color.value.toRadixString(16).substring(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const
           Text('Material App Bar'),
        ),
        body: Column(
          children: [
            
            //!Cambiar esto para el expanded/ activarlo
            Expanded(child: //Expanded hace uso de todo el espacio que se le suministra menos el de otros componentes
              Center(
                child: AnimatedContainer(//para que se vea mas suave el cambio se usa animated container
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: _borderRadius
                  ),
                ),
              ),
            ),//!Cambiar esto para el expanded
            Text("El codigo RGB ES: $_hexColor", style: const TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
              setState(() {
                _cambiarContainer();
              });
            }, child: const Text("Cambiar container"))
          ],
        )
      ),
    );
  }
}