import 'package:flutter/material.dart';
import '../Login/TextFieldWidget.dart';
import '../Login/ButtonWidget.dart';
import '../Login/login.dart';
import 'dateField.dart';
class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Center(
          child: new Text(
            'REGISTRATE', 
            textAlign: TextAlign.center, 
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
              ),
            )
          ),
        ),
        
    
      body: 
      
      SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          
        TextFieldWidget(
                  hintText: 'Apellidos', obscureData: false,
                  prefixIconData: Icons.person
        ),
        SizedBox(height: 20.0),
        TextFieldWidget(
                  hintText: 'Nombres', obscureData: false,
                  prefixIconData: Icons.person
        ),
        SizedBox(height: 20.0),
        TextFieldWidget(
                  hintText: 'Fecha de Nacimiento', obscureData: false,
                  prefixIconData: Icons.date_range_outlined
        ),
        SizedBox(height: 20.0),
        TextFieldWidget(
                  hintText: 'Celular', obscureData: false,
                  prefixIconData: Icons.settings_cell_rounded 
        ),
        SizedBox(height: 20.0),
        TextFieldWidget(
                  hintText: 'Email', obscureData: false,
                  prefixIconData: Icons.attach_email
        ),
        SizedBox(height: 20.0),
        TextFieldWidget(
                  hintText: 'Contraseña', obscureData: false,
                  prefixIconData: Icons.lock_outline
        ),
        SizedBox(height: 20.0),
        TextFieldWidget(
                  hintText: 'Confirmar contraseña', obscureData: false,
                  prefixIconData: Icons.lock_outline
        ),
        SizedBox(height: 40.0),
        Center(
            child: ButtonWidget(
              title: 'REGISTRARSE',
              hasBorder: false,
              onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => loginin()));
        },
            )
          )
        ]

      )
      
      ),
    )
    );
  }
}