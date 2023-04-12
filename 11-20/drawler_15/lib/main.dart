import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        drawer:Drawer(
          child: Container(
            color: Colors.white,
            child: Column(children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top:10),// agregar el margen al container
                child: Image.network("https://www.petclic.es/wikipets/wp-content/uploads/sites/default/files/library/blanco1.jpg"),
              ),
              const Text('Jose galdamez', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                color: Colors.grey[200],
                child: const Text("Home"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                color: Colors.grey[200],
                child: const Text("Settings"),
              ),
              Expanded(child:Container()),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                color: Colors.red[200],
                alignment: Alignment.center,
                child: const Text("Sign Out", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              )
            ]
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}