import 'package:flutter/material.dart';
import '../Main/bodyn.dart';
import '../General/CurvedNav.dart';

class ProdDetail extends StatefulWidget { 
  @override
  _ProdDetailState createState() => _ProdDetailState();
}

class _ProdDetailState extends State<ProdDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


