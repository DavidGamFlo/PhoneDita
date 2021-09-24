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

class ListaComidas extends StatelessWidget {
  const ListaComidas({
    Key? key,
    required this.imagen,
    required this.titulo,
    required this.descripcion,
    required this.rated,
  }) : super(key: key);
  final Widget imagen;
  final String titulo;
  final String descripcion;
  final double rated;

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
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
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
  }) : super(key: key);

  final String titulo;
  final String descripcion;
  final double rated;

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
            titulo,
            style: const TextStyle(fontSize: 10),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 6.0)),
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
          descripcion: 'Pepinguinos bien delinux',
        ),
      ],
    );
  }
}

void main() {
  runApp(const MyApp());
}
