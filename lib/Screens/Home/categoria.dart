import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/TexiInformacion.dart';


Widget horizontalList2 = new Container(
    margin: EdgeInsets.symmetric(vertical: 5.0),
    height: 50.0,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child:  textoCategoria("Hamburguesas", Colors.white),
              width: 150.0
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
              //color: Color(0xffF0F1F3),
            ),
            child: textoCategoria("Ensaladas", Colors.black),
            width: 150.0,),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
              //color: Color(0xffF0F1F3),
            ),
            child: Center(
              child: textoCategoria("Hamburguesas", Colors.black),
              
              ),
            width: 150.0,),
        ),
        /*Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF9F0DF),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset("assets/calabaza.png",
                      height: 70.0,),
                  
                  Text("Hamburguesas",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),)
                ],
              ),
              width: 110.0
          ),
        ),*/
      ],
    )
);