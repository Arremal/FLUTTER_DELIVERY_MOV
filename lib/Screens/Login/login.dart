import 'package:flutter/material.dart';

import 'ButtonWidget.dart';
import 'TextFieldWidget.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0,left: 30.0,bottom: 50.0, top: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0, top: 30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/iconodelivery.PNG")
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                /*Padding(
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
                ),*/


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
                    hasBorder: false
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(
                    title: 'Registrate',
                    hasBorder: true
                ),
              ],
            ),
          ),
        )
    );
  }
}