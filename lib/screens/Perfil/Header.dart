import 'package:flutter/material.dart';
import 'container.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ContainerPerfil(),
          Container(child:
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              
              Column(children: <Widget>[
                Image.asset(
                  'assets/perfil.png',
                  height: 200,
                )
              ]
              ),
              Column(
                

                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Positioned(
                        child: Text(
                        'Santos Ocalio',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),)
                    ]
                  
                  )
                ],
              )
            ],
          ),
          ),
          Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                new Text(
                    'Dirección no asignada',
                    textAlign: TextAlign.right,
                    ),
            Text(
                  'escoja una por favor',
                ),
              ]
            
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.person_pin_circle_outlined,
                size: 50,
              ),
            ],
          )
          ],
        ),)
        
        ],
      ),
    );
  }
}