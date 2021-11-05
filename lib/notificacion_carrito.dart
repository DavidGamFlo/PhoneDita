import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'dart:io';

class CarritoCompras extends StatefulWidget {
  String titulo;
  double total;

  CarritoCompras({Key? key, this.titulo = '', this.total = 0})
      : super(key: key);

  @override
  _CarritoCompras createState() =>
      _CarritoCompras(titulo: titulo, total: total);
}

double costo(int cuenta, double precio) {
  return cuenta * precio;
}

class _CarritoCompras extends State<CarritoCompras> {
  _CarritoCompras({this.titulo = '', this.total = 0});

  String titulo;
  double total;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrito',
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
            "Su compra",
            style: TextStyle(color: Colors.blueGrey[800]),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(titulo),
            Text(total.toStringAsFixed(2) + ' mxn'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('back'),
            ),
          ],
        )),
      ),
    );
  }
}
