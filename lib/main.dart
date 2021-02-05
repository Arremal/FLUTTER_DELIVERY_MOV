

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_delivery_mov/screens/Login/login.dart';
import 'package:flutter_delivery_mov/screens/Main/bodyn.dart';
import 'package:flutter_delivery_mov/screens/Main/firstHome.dart';
import 'package:flutter_delivery_mov/screens/Perfil/container.dart';
import 'package:flutter_delivery_mov/screens/Perfil/perfil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/Registro/registro.dart';
import 'screens/Perfil/drawer.dart';
import 'screens/Producto/viewProd.dart';
import 'screens/Producto/viewProd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('es')
      ],
      title: "Delivery",
      home: Home(

      ),
    );
  }
}
class MyHomePage extends StatefulWidget { 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        color: Color(0xFFFF6B01),
        items: <Widget>[
          Icon(Icons.home, size: 20,
            color: Colors.white,
          ),
          Icon(Icons.local_dining, size: 20, color: Colors.white),
          Icon(Icons.view_module, size: 20, color: Colors.white,),
        ],
        onTap: (index) {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/fondo.jpg")
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              Nabarr(),
              Conten(),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: cardin(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 290,),
                    child:  Buttonon(),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),


    );
  }
}

