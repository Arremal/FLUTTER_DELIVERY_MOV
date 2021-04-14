import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/DetalleCarroProvider.dart';
import 'package:flutter_application_1/Screens/Carrito/Carro.dart';
import 'package:flutter_application_1/Screens/Home/TiendaList.dart';
import 'package:flutter_application_1/Screens/Home/cardListon.dart';
import 'package:flutter_application_1/Screens/Home/categoria.dart';
import 'package:flutter_application_1/Screens/Usuario/Usuario.dart';
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
            Icons.location_on,
            color: Colors.black,
        ), 
        onPressed: (){
          Navigator.push( context, MaterialPageRoute(builder: (context) => Usuario()));
        }),
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
                      '${context.watch<DetalleCarroProvider>().detallecarro.length}',
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
          Container(
            height: MediaQuery.of(context).size.height, 
            child: Tiendita(),)
        ],
      ),
    );
   

  }
}