import 'package:flutter/material.dart';
import 'listado_menu.dart';

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

void main() {
  runApp(const MyApp());
}
