import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/TiendaList.dart';
import 'package:flutter_application_1/Screens/Home/cardListon.dart';
import 'package:flutter_application_1/Screens/Home/categoria.dart';
import 'package:flutter_application_1/Services/LoginService.dart';

import 'TexiInformacion.dart';


class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return ListView(
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
            ],);
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