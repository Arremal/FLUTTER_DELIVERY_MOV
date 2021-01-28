import 'package:flutter/material.dart';
import '../Perfil/drawer.dart';

class ProdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPerfil(),
      backgroundColor: Color(0xFFFF6B01),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.white, 
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                    Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.filter_list),
                            color: Colors.white, 
                            onPressed: (){}
                            ),
                            IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white, 
                            onPressed: (){}
                            )
                        ]
                      ),
                    )
                ],
              ),
            )
        ],
      ),
    );
  }
}