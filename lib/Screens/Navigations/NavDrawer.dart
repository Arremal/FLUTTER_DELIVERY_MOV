import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/TexiInformacion.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';
import 'package:flutter_application_1/Screens/Usuario/Usuario.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 5.0, top: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                ),
                child: ListTile(
                  leading: Icon(Icons.settings,),
                  title: Text('Ajustes'),
                  onTap: () => {
                    
                    Navigator.pushNamed(context, '/a'),
                    /*Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return Producto();
                    }))*/
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                ),
                child: ListTile(
                  leading: Icon(Icons.settings_applications),
                  title: Text('Opciones Avanzadas'),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return Producto();
                    }))
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                ),
                child: ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Historial de compras'),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return Producto();
                    }))
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                ),
                child: ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Mis favoritos'),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return Producto();
                    }))
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                ),
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Noticias'),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return Producto();
                    }))
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                ),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Usuario'),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return Usuario();
                    }))
                  },
                ),
              ),
            ),
          ],
        ),
    );
  }
}

