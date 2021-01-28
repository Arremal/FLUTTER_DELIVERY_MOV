import 'package:flutter/material.dart';
import 'drawer.dart';


class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerPerfil(),
    );
  }
}

/*class Perfil extends StatefulWidget {
  
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List names = ["Cardiología",  "Neurología", "Odontología", "Cardiología",  "Neurología", "Odontología"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerPerfil(),
    );
  }
}*/