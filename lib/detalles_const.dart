import 'package:flutter/material.dart';
import 'main.dart';

class Detallito extends StatelessWidget {
  const Detallito({
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
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              child: const Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}

class Contadores extends StatefulWidget {
  const Contadores({Key? key, required this.precio}) : super(key: key);

  final double precio;
  @override
  _Contadores createState() => _Contadores(precio: precio);
}

class _Contadores extends State<Contadores> {
  _Contadores({required this.precio});

  final double precio;
  int cuenta = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey),
              ),
              onPressed: () {
                cuenta++;
              },
              child: const Icon(
                Icons.remove_circle_outline_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
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
