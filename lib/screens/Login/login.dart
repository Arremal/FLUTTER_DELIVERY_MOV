import 'package:flutter/material.dart';
import 'package:flutter_delivery_mov/screens/Login/ButtonWidget.dart';
import 'package:flutter_delivery_mov/screens/Login/TextFieldWidget.dart';
import '../../main.dart';
import '../Registro/registro.dart';


class loginin extends StatefulWidget {
  @override
  _logininState createState() => _logininState();
}

class _logininState extends State<loginin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(right: 30.0,left: 30.0,bottom: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(bottom: 50.0, top: 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/fondo.jpg")
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,

                      ),
                    ),
                  ],
                ),
              ),

              TextFieldWidget(
                  hintText: 'Email', obscureData: false,
                  prefixIconData: Icons.mail_outline
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextFieldWidget(
                      hintText: 'Password',
                      obscureData: true,
                      prefixIconData: Icons.lock_outline
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Olvidaste tu contraseña?',
                      style: TextStyle(
                          color: Color(0xFFFF6B01)
                      )
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonWidget(
                  title: 'Ingresar',
                  hasBorder: false,
                  onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => MyHomePage()));
        },
              ),
              SizedBox(
                height: 10.0,
              ),
              ButtonWidget(
                  title: 'Registrate',
                  hasBorder: true,
                  onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => Registro()));
        },
              ),
            ],
          ),
        )
    );
  }
}
