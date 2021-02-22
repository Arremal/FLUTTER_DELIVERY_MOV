import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:flutter_application_1/Screens/Home/TiendaList.dart';
import 'package:flutter_application_1/Screens/Home/buttonsearch.dart';
import 'package:flutter_application_1/Screens/Home/cardListon.dart';
import 'package:flutter_application_1/Screens/Home/categoria.dart';
import 'package:flutter_application_1/Screens/Home/texti.dart';
import 'package:flutter_application_1/Services/TiendaService.dart';
import 'package:http/http.dart' as http;


class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  var tienda = new List<Tienda>();

 /* _listTiendas(){
    TiendaService.listarTiendas().then((response){
      setState((){
        Iterable list = json.decode(response.body);
        tienda = list.map((model) => Tienda.fromJson(model)).toList();
      });
    });

  }
*/
  /*initState() {
    super.initState();
    _listTiendas();
  }

  dispose() {
    super.dispose();
  }
  */
  @override
  Widget build(BuildContext context) {
    return 
    //TiendaList();
    
    Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Texti(),
              Buttonsearch()
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: horizontalList2,
          ),
          CardListon(),
          // letras()
        ],
      ),
    );
  }
}