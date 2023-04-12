// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Terminos y condiciones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const Text(
            'Mucho texto',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos.para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos',
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'para usar esto deb5 aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos.para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos',
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.justify,
          ),
          const Text(
            'para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos.para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos',
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos.para usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datospara usar esto debe aceptar el mucho texto anterior.De esta forma me aseguro de robar sus datos',
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              //*Esto es como se pone el color al boton
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Aceptar Terminos',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ]),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ]),
      ),
    );
  }
}
