import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'formas.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fonditas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PhoneDitas'),
        ),
        body: const Comidas(),
      ),
    );
  }
}

/*
class BotonView extends StatefulWidget {
  const BotonView({Key? key}); super(key: key);

  @override
  _BotonViewState createState() => _BotonViewState();
}

class _BotonViewState extends State<BotonView>{
  bool _Cambio = false;

  void _cambioVentana(){
    setState((){
      _Cambio = !_Cambio;
    });
  }

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: _cambioVentana,
      child: Container(
            decoration: 
              const BoxDecoration(color: Colors.blue),
              
          ),
          const Text('view'),
    )
  }
}
*/
class ListaComidas extends StatelessWidget {
  const ListaComidas({
    Key? key,
    required this.imagen,
    required this.titulo,
    required this.descripcion,
    required this.rated,
    required this.precio,
  }) : super(key: key);
  final Widget imagen;
  final String titulo;
  final String descripcion;
  final double rated;
  final double precio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: imagen,
          ),
          Expanded(
            flex: 3,
            child: _DescripcionComidas(
              titulo: titulo,
              descripcion: descripcion,
              rated: rated,
              precio: precio,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
            child: Text('View'),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class _DescripcionComidas extends StatelessWidget {
  const _DescripcionComidas({
    Key? key,
    required this.titulo,
    required this.descripcion,
    required this.rated,
    required this.precio,
  }) : super(key: key);

  final String titulo;
  final String descripcion;
  final double rated;
  final double precio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            titulo,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            descripcion,
            style: const TextStyle(fontSize: 15),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            '$precio mxn',
            style: const TextStyle(fontSize: 15.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$rated calificación',
            style: const TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}

class Comidas extends StatelessWidget {
  const Comidas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <ListaComidas>[
        ListaComidas(
          titulo: 'Suaperro',
          rated: 5.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/Ayudante.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 20.00,
          descripcion: 'Ricos tacos de suaperro',
        ),
        ListaComidas(
          titulo: 'Pepinguinos',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/descarga.jpg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 50.00,
          descripcion: 'Pepinguinos bien delinux',
        ),
      ],
    );
  }
}

class Todo {
  final String titulo;
  final String descripcion;
  final double rated;
  final Widget imagen;
  Todo(this.titulo, this.descripcion, this.imagen, this.rated);
}

abstract class ListItem {}

class _MenuItem extends ListTile {}

void main() {
  runApp(const MyApp());
}
