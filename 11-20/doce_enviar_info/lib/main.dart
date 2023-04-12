import 'package:doce_enviar_info/pages/pageStatefull.dart';
import 'package:flutter/material.dart';

import 'pages/pageStateless.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textoController =
        TextEditingController(text: ""); // con esto pasamos la info

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textoController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Ingrese texto"),
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PageStateles(textoController.text)));
              },
              child: const Text('Enviar a stateless')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PagesStatefull(textoController.text)));
              },
              child: const Text('Enviar a statefull')),
        ],
      ),
    );
  }
}
