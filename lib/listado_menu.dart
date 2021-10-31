import 'package:flutter/material.dart';
import 'lista_comidas.dart';

class Comidas extends StatelessWidget {
  const Comidas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: const <ListaComidas>[
        ListaComidas(
          titulo: 'Suaperro',
          rated: 5.0,
          imagen: 'assets/Suaperro.jpeg',
          precio: 20.00,
          descripcion: 'Ricos tacos de suaperro',
        ),
        ListaComidas(
          titulo: 'Pepinguinos',
          rated: 4.0,
          imagen: "assets/Pepitos.jpeg",
          precio: 50.00,
          descripcion: 'Pepinguinos bien delinux',
        ),
        ListaComidas(
          titulo: 'Pozolito',
          rated: 4.8,
          imagen: "assets/Pozole.jpeg",
          precio: 80.00,
          descripcion: 'Rico pozole rojo con carne al gusto, tostadas y crema',
        ),
        ListaComidas(
          titulo: 'Mole',
          rated: 4.0,
          imagen: "assets/Mole.jpeg",
          precio: 60.00,
          descripcion: 'Rico mole oaxaqueño con pollo y enchiladas',
        ),
        ListaComidas(
          titulo: 'Tacos dorados',
          rated: 4.0,
          imagen: "assets/Tacos.jpeg",
          precio: 50.00,
          descripcion:
              'Orden de 4 tacos dorados rellenos de pollo con aguacate crema y queso',
        ),
        ListaComidas(
          titulo: 'Barbacha',
          rated: 4.0,
          imagen: "assets/barbacoa.jpeg",
          precio: 20.00,
          descripcion: 'Barbacoa de horno estilo hidalguense',
        ),
        ListaComidas(
          titulo: 'Enchiladas Suizas',
          rated: 4.0,
          imagen: "assets/enchiladas.jpeg",
          precio: 80.00,
          descripcion:
              'Deliciosas enchiladas suizas verdes o rojas con guarnicion y carne al gusto',
        ),
        ListaComidas(
          titulo: 'Carnitas',
          rated: 4.0,
          imagen: "assets/carnitas.jpeg",
          precio: 25.00,
          descripcion:
              'Deliciosos tacos de carnitas bien surtidos estilo Michoacán',
        ),
        ListaComidas(
          titulo: 'Chiles en nogada',
          rated: 5.0,
          imagen: "assets/Chiles.jpeg",
          precio: 150.00,
          descripcion: 'Deliciosos chiles en nogada',
        ),
        ListaComidas(
          titulo: 'Tlayudas',
          rated: 4.0,
          imagen: "assets/Tlayuda.jpeg",
          precio: 45.00,
          descripcion: 'Ricas tlayudas estilo Oaxaca',
        ),
        ListaComidas(
          titulo: 'Agua Fresca',
          rated: 4.8,
          imagen: "assets/Aguas.jpeg",
          precio: 30.00,
          descripcion: 'Aguas frescas por litro de sabores de temporada',
        ),
        ListaComidas(
          titulo: 'Quesadillas',
          rated: 4.0,
          imagen: "assets/Quesadillas.jpeg",
          precio: 20.00,
          descripcion: 'Quesadillas de diferentes guisados con o sin queso',
        ),
        ListaComidas(
          titulo: 'MichesTepiteñas',
          rated: 4.0,
          imagen: "assets/Miches.jpeg",
          precio: 75.00,
          descripcion: 'Refrescantes miches al estilo tepiteño',
        ),
        ListaComidas(
          titulo: 'Tamales',
          rated: 4.0,
          imagen: "assets/Tamales.jpeg",
          precio: 15.00,
          descripcion: 'Tamales oaxaqueños tamales calientitos',
        ),
        ListaComidas(
          titulo: 'Refrescos',
          rated: 4.0,
          imagen: "assets/Refrescos.jpeg",
          precio: 20.00,
          descripcion: 'Refrescos (600 ml) embotellados',
        ),
        ListaComidas(
          titulo: 'Pizza',
          rated: 4.0,
          imagen: "assets/Pizza.jpeg",
          precio: 100.00,
          descripcion: 'Pizza tamaño mediano de diferentes especialidades',
        ),
      ],
    );
  }
}
