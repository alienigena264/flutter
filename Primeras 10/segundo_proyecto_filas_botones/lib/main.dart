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

/*  
*Para columnas y filas
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
        title: Text('Filas,columnas y botones'),
      ),
      body: Column(
        //Tambien existen las filas/Row
        mainAxisAlignment: MainAxisAlignment.center,// con esto decidimos desde cuando va a iniciar el widget
        /*MainAxisAlignment.center = en el centro
        MainAxisAlignment.start = en el inicio
        MainAxisAlignment.end = en el final
        MainAxisAlignment.center = en el centro
        MainAxisAlignment.spaceAround = Divide la pantalla entre el numero de widgets y los centra en ese espacio, es parecido al evenly
        MainAxisAlignment.spaceBetween  = Pone los widgets lo mas alejado posible
        MainAxisAlignment.spaceEvenly = Divide la pantalla para darles el mismo espacio entre cada widget 
        */
        crossAxisAlignment: CrossAxisAlignment.center,// esto va a  cambiar la alineacion con respecto al otro eje 
        mainAxisSize: MainAxisSize.max,//max =  toma todo el alto de la pantalla, min =  toma solo lo que usa la columna
        children: [
        Container(
          width: MediaQuery.of(context).size.width,//Con esto podemos hacer para centrar el elemento en base a hacer la columna de ancho toda la app(fijo es una mala practica)
          //La anterior linea se debe quitar si quiero centrar algo en Row
          child: Text('data',textAlign: TextAlign.center,),//asi podemos centrar algo atra vez de toda la columna 
        ),
        Text('Anti-data')
      ],
      ),
    );
  }
}
*/


//*Para botones

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
        title: const Text('Filas,columnas y botones'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisSize : (MainAxisSize.min),//con esto evitamos que el boton ocupe todo
            children: const [
              Icon(Icons.access_time),
              SizedBox(
                width: 10,
              ),
              Text('Cliceable')
            ],
          ),
          onPressed: (){
            var t = DateTime.now();
            print(t);
          }
          ),
      ),
    );
  }
}
