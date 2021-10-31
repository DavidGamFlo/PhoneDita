import 'package:flutter/material.dart';
import 'detalles_const.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Detallito(
                imagen: imagen,
                titulo: titulo,
                descripcion: descripcion,
                rated: rated,
                precio: precio,
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
