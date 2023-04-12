import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Persona> _personas = [
    Persona("Juan", "Garacia", "3123452623"),
    Persona("Pedro", "Perez", "3203452423"),
    Persona("Maria", "Gomez", "3123452623"),
    Persona("Luis", "Garcia", "3123452623"),
    Persona("Luisa", "Garcia", "3123452623"),
    Persona("Andres", "Gomez", "3205265456"),
    Persona("Negro", "Gomez", "32000000"),
    Persona("Sapo si lo lee", "Quiroga", "32245552")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: ListView.builder(
              itemCount: _personas.length,
              itemBuilder: (context, index) {
                return ListTile(
                    onTap: () {
                      print(_personas[index].name);
                    },
                    onLongPress: (){
                      _borrarPersona(context, _personas[index]);
                    },
                    title: Text(
                        '${_personas[index].name} ${_personas[index].lastName}'),
                    subtitle: Text(_personas[index].phone),
                    //! Otra forma en que se vea un simbolo chingon
                    //leading: Icon(Icons.person),
                    leading: CircleAvatar(
                      //inicio de la linea
                      child: Text(_personas[index].name.substring(0, 1)),
                    ),
                    trailing:
                        const Icon(Icons.arrow_forward_ios) // final de la linea
                    );
              })),
    );
  }

  _borrarPersona(context, persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text("Eliminar contacto"),
              // ignore: prefer_interpolation_to_compose_strings
              content: Text("Esta seguro de querer eliminar a " + persona.name),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancelar")
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    print("Estas seguro de borrar a: "+persona.name);
                    setState(() {
                      _personas.remove(persona);
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("Borrar", style: TextStyle(color: Colors.white),)
                ),
              ],
            )
          );
  }
}

class Persona {
  String name;
  String lastName;
  String phone;

  Persona(this.name, this.lastName, this.phone);
}
