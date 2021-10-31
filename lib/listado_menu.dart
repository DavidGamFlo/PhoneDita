import 'package:flutter/material.dart';
import 'lista_comidas.dart';

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
                fit: BoxFit.contain,
                scale: 0.5,
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
                fit: BoxFit.contain,
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
