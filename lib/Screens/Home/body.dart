import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/CatalogoProvider.dart';
import 'package:flutter_application_1/Screens/Carrito/Carro.dart';
import 'package:flutter_application_1/Screens/Home/TiendaList.dart';
import 'package:flutter_application_1/Screens/Home/cardListon.dart';
import 'package:flutter_application_1/Screens/Home/categoria.dart';
import 'package:flutter_application_1/Screens/Usuario/Usuario.dart';
import 'package:flutter_application_1/Services/LoginService.dart';
import 'package:provider/provider.dart';

import 'TexiInformacion.dart';


class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.supervised_user_circle_sharp,
            color: Colors.black,
        ), 
        onPressed: (){
          Navigator.push( context, MaterialPageRoute(builder: (context) => Usuario()));
        }),
        /*leading: Icon(
          Icons.supervised_user_circle_sharp,
          color: Colors.black,
        ),*/
        actions: <Widget>[
          IconButton(
            icon: Stack(
              overflow: Overflow.visible,
              children: [
                Icon(Icons.shopping_basket, color: Colors.black,),
                Positioned(
                  right: -10,
                  top: -10,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(
                      '${context.watch<CatalogoProvider>().catalogo.length}',
                      //'$contador',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,
                    ),
                  ),
                  radius: 10.0,
                ),
                ),
              ],
            ),
            onPressed: (){
              Navigator.push( context, MaterialPageRoute(builder: (context) => Carro()));
            }
          ),
          
        ],
      ),
      body: ListView(
              children: [
                informacion("Hoy es especial", 25.0, FontWeight.bold),
              informacion("Comida Fresca", 15.0, FontWeight.normal),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: horizontalList2,
              ),
              CardListon(),
              informacion('Tiendas', 20.0, FontWeight.bold),
              //HomeScreen(),
              Container(
                height: MediaQuery.of(context).size.height, // give it a fixed height constraint
                child: Tiendita(),)
              //Tiendita()
              ],),
    );
    /*Container(
      child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                 /* Row(
                    children: <Widget>[
                     
                      //Texti(),
                     // Buttonsearch()
                    ],
                  ),*/
                  informacion("Hoy es especial", 25.0, FontWeight.bold),
                  informacion("Comida Fresca", 15.0, FontWeight.normal),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: horizontalList2,
                  ),
                  CardListon(),
                  informacion('Tiendas', 20.0, FontWeight.bold),
                  //HomeScreen(),
                  Expanded(child: Tiendita()
                  )
                  
                ],
              ),
            ),
          )
      
    );*/

  }
}