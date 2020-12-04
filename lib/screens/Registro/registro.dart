import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: <Widget>[
        Text(
          'Datos Del Paciente', 
          style: TextStyle(fontSize: 25.0),
          ),
        TextField(
          decoration: InputDecoration(labelText: "Apellidos"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Nombre"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Fecha de Nacimiento"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Celular"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "GENERO"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Email"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Contraseña"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Confirmar Contraseña"),
        ),
        SizedBox(height: 50.0),
        ],
      ),
    )
    );
  }
}