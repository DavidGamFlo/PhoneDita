import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'formas.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phoneditas',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[600],
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple[900],
        ),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.grey[300])),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PhoneDitas',
            style: TextStyle(color: Colors.grey[400]),
          ),
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
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondRoute(
                        imagen: imagen,
                        titulo: titulo,
                        descripcion: descripcion,
                        rated: rated,
                        precio: precio)),
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
  const SecondRoute({
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
    return MaterialApp(
      title: 'Detalles',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.lightGreen[200],
        ),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.blueGrey[900])),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Detalles",
            style: TextStyle(color: Colors.blueGrey[800]),
          ),
        ),
        body: Row(
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
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text('Go back!'),
              ),
            ),
          ],
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
            '$rated estrellas',
            style: const TextStyle(fontSize: 15.0),
          ),
          Icon(
            Icons.star,
            color: Colors.amber[600],
            size: 12,
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
                scale: 1.0,
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

void main() {
  runApp(const MyApp());
}
