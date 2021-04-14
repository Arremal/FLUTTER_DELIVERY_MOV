import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/SplashScreen/SplashSreen.dart';

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
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.09,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xFFFF6B01),
                      child: Text("Ingresar",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0
                        ),
                      ),
                    onPressed: () {
                      Navigator.push( context, MaterialPageRoute(builder: (context) => Splash()));
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                   ),

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