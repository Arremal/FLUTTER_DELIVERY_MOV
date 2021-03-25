import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/TexiInformacion.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';
import 'package:flutter_application_1/Screens/Ubicacion/Direccion.dart';
import 'package:flutter_application_1/Screens/Usuario/Usuario.dart';
import 'package:flutter_application_1/Screens/Ubicacion/ubicacion.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 5.0, top: 15.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(
                Icons.settings,
              ),
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text('Opciones Avanzadas'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Historial de compras'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Mis favoritos'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text('Noticias'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Usuario();
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: ListTile(
              leading: Icon(Icons.add_location_rounded),
              title: Text('Direcciones'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Direccion();
                  // return Ubicacion();
                }))
              },
            ),
          ),
        ),
      ],
    );
  }
}
