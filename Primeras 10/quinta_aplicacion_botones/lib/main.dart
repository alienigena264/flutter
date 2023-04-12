import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MyApp",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  bool _isGod = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert dialogs'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  print('Tocado');
                  _mostrarAlerta(context);
                },
                child: const Text(
                  'Power es god?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                //Condicional ternaria
                _isGod ? 'Si es GOD' : 'No es god',
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        )
      );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible:
        false, //Esto sirve para evitar que al hacer clic fuera del dialog se cierre
      context: context,
      //* Esta es la forma en la que se usan los show dialogs en esta version de flutter
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Power es realmete God'),
          content: Text(
            _isGod ? 'No estaras pensando en decir que no es god? o acaso power...': 'Porque dices que no es god, no quieres cambiar tu respuesta?',),
          actions: [
            TextButton(
              //De esta manera se puede cerrar los alert dialogs
              onPressed: () { 
                setState(() {
                  _isGod = false;
                });
                Navigator.pop(context);},
              child: const Text('No es')),
            TextButton(
              onPressed: () { 
                setState(() {
                  _isGod = true;
                });
                Navigator.pop(context);},
              child: const Text('Si es')
            )
          ],
        );
      }
    );
  }

}
