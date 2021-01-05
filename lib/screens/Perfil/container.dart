import 'package:flutter/material.dart';

class ContainerPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new GradientBack(),
        new Positioned(
          bottom: 0.0,
          child: new Container(
            padding: EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            height: 500.0,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
               Padding(padding: const EdgeInsets.only(
                 left: 25
               ),
               child: Column (
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home, size: 45.0,),
                    Icon(Icons.settings, size: 45.0,),
                    Icon(Icons.map_outlined, size: 45.0,),
                    Icon(Icons.circle, size: 45.0,),
                    Icon(Icons.library_add, size: 45.0,),
                    Icon(Icons.tab_sharp, size: 45.0,),
                  ],
               ),     
              ),
              Padding(padding: const EdgeInsets.only(
                 left: 120
               ),
               child: Column (
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Inicio', style: TextStyle(fontSize: 30)),
                    Text('Ajuste de cuenta', style: TextStyle(fontSize: 30),),
                    Text('Mis direcciones', style: TextStyle(fontSize: 30),),
                    Text('Mis puntos', style: TextStyle(fontSize: 30),),
                    Text('Mis pedidos', style: TextStyle(fontSize: 30),),
                    Text('Cupones', style: TextStyle(fontSize: 30),),
                  ],
               ),              
              ),

            ],
          ),
            /*child: Column(children: <Widget>[

            ],
          ),*/

        )
      )
      ],
    );
  }
}

class GradientBack extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(   
      decoration: new BoxDecoration(
      gradient: new LinearGradient(
                  colors: [
                    Color(0xFFffbb00),
                    Color(0xFFf38c02)
                  ],
                begin: const FractionalOffset(1.0, 0.1),
                end: const FractionalOffset(1.0, 0.9)
                )
              ),
      
    );
  }
}