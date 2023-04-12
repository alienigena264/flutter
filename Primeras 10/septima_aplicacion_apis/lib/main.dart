import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:septima_aplicacion_apis/Models/Gif.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Gif>> _listadoGifs;
// los future es solo la manera en la que vamos a proacesasar los apis/ hacen una espera 
  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=DPcs08yPRtE4haP9vyaXwaNavuLwoWv8&limit=10&rating=g"));

    List<Gif> _gifs = [];

    if (response.statusCode == 200) {
      //Esto es por si trae un caracter raro
      String body = utf8.decode(response.bodyBytes);

      final jsondata = jsonDecode(body);

      for (var item in jsondata["data"]) {
        //Le pasamos a nuestros objetos de tipo Gif la url y el titulo (ver la clase gif)
        _gifs.add(Gif(item["images"]["downsized"]["url"], item["title"]));
        // se usan los parentesis cuadrados para acceder a las rutas que queremos de la api
      }
      return _gifs;
      // Parse the response and return a list of Gif objects here
    } else {
      throw Exception("Fallo la conexion");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: FutureBuilder(
          future: _listadoGifs,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.count(
                  crossAxisCount: 2, children: _listGifs(snapshot.data));
            } else if (snapshot.hasError) {
              return const Text('Error');
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

List<Widget> _listGifs(data) {
  //creamos la lista de los widgets
  List<Widget> gifs = [];
  // Le damos el valor a item de lo que haya en data y data es la lista que pedimos de nuestra api
  for (var item in data) {
    gifs.add(
      Card(
        child: Column(
          children: [
            Expanded(// con esto hacemos uso de todo el espacio
              child: Image.network(
                item.url,
                //fit: BoxFit.fill,// esto hace que se llene igaul al expanded // sirve sin esto pero puede llegar a fallar entonces mejor pongalo
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.title),
            ),
          ],
        )
      )
    );
  }
  return gifs;
}
