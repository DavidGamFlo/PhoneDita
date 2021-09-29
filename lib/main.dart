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
    this.descripcionc = "",
  }) : super(key: key);
  final Widget imagen;
  final String titulo;
  final String descripcion;
  final double rated;
  final double precio;
  final String descripcionc;

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
              descripcion: descripcion.substring(0, 20) + "...",
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
                image: AssetImage('assets/Suaperro.jpeg'),
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
                image: AssetImage("assets/Pepitos.jpeg"),
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
        ListaComidas(
          titulo: 'Pozolito',
          rated: 4.8,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Pozole.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 80.00,
          descripcion: 'Rico pozole rojo con carne al gusto, tostadas y crema',
        ),
        ListaComidas(
          titulo: 'Mole',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Mole.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 60.00,
          descripcion: 'Rico mole oaxaqueño con pollo y enchiladas',
        ),
        ListaComidas(
          titulo: 'Tacos dorados',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Tacos.jpeg"),
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
          descripcion:
              'Orden de 4 tacos dorados rellenos de pollo con aguacate crema y queso',
        ),
        ListaComidas(
          titulo: 'Barbacha',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/barbacoa.jpeg"),
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
          descripcion: 'Barbacoa de horno estilo hidalguense',
        ),
        ListaComidas(
          titulo: 'Enchiladas Suizas',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/enchiladas.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 80.00,
          descripcion:
              'Deliciosas enchiladas suizas verdes o rojas con guarnicion y carne al gusto',
        ),
        ListaComidas(
          titulo: 'Carnitas',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/carnitas.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 25.00,
          descripcion:
              'Deliciosos tacos de carnitas bien surtidos estilo Michoacán',
        ),
        ListaComidas(
          titulo: 'Chiles en nogada',
          rated: 5.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/Chiles.jpeg'),
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
          precio: 150.00,
          descripcion: 'Deliciosos chiles en nogada',
        ),
        ListaComidas(
          titulo: 'Tlayudas',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Tlayuda.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 45.00,
          descripcion: 'Ricas tlayudas estilo Oaxaca',
        ),
        ListaComidas(
          titulo: 'Agua Fresca',
          rated: 4.8,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Aguas.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 30.00,
          descripcion: 'Aguas frescas por litro de sabores de temporada',
        ),
        ListaComidas(
          titulo: 'Quesadillas',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Quesadillas.jpeg"),
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
          descripcion: 'Quesadillas de diferentes guisados con o sin queso',
        ),
        ListaComidas(
          titulo: 'MichesTepiteñas',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Miches.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 75.00,
          descripcion: 'Refrescantes miches al estilo tepiteño',
        ),
        ListaComidas(
          titulo: 'Tamales',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Tamales.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 15.00,
          descripcion: 'Tamales oaxaqueños tamales calientitos',
        ),
        ListaComidas(
          titulo: 'Refrescos',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Refrescos.jpeg"),
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
          descripcion: 'Refrescos (600 ml) embotellados',
        ),
        ListaComidas(
          titulo: 'Pizza',
          rated: 4.0,
          imagen: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Pizza.jpeg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          precio: 100.00,
          descripcion: 'Pizza tamaño mediano de diferentes especialidades',
        ),
      ],
    );
  }
}

void main() {
  runApp(const MyApp());
}
