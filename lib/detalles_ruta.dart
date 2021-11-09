import 'package:flutter/material.dart';
import 'package:flutter_proobes_1/notificacion_carrito.dart';
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

  final String imagen;
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
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CarritoCompras()));
                },
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Detallito(
              imagen: imagen,
              titulo: titulo,
              descripcion: descripcion,
              rated: rated,
              precio: precio,
            ),
            Contadores(
              precio: precio,
              titulo: titulo,
            ),
          ],
        ),
      ),
    );
  }
}
