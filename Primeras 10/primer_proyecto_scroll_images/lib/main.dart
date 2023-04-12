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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi perrona app'),
      ),
      //body: Text('contenido'), De esta forma apareceria arriba a la izquierda
      //Con el siguiente bloque pondriamos un hola mundo en la mitad 
      /*body: Center(
        child: Text('Hola Fin del Mundo'),
      ),*/
      body: ListView(
        //Para agregar un colum primero creamos un container y lo modificamos, luego le damos ctrl. y le damos colum 
        //el colum nos limita el espacio, por lo que usamos el ListView
        children: [
          Container(
            padding: const EdgeInsets.all(15.5),
            child: Image.network("https://www.fayerwayer.com/resizer/hI6rLSmg_DXGco3rPpGNWVP9Mg0=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/OZNTCK3B3BDINECSQ3MVFCJZVM.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(15.5),
            child: Image.network("https://alfabetajuega.com/hero/2022/12/denji.1671293856.8046.jpeg?width=768&aspect_ratio=16:9&format=nowebp"),
          ),
          Container(
            padding: const EdgeInsets.all(15.5),
            child: Image.network("https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2022/11/chainsaw-man-power-figura-anime.jpg?fit=1280%2C720&quality=80&ssl=1"),
          ),
          Container(
            padding: const EdgeInsets.all(15.5),
            child: Image.network("https://codigoespagueti.com/wp-content/uploads/2022/10/aki-hayakawa-chainsaw-man-1.jpg"),
          ),
        ],
      ),
    );
  }
}
