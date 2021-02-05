import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/Routes.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/man.png',),
                  width: MediaQuery.of(context).size.width * 0.2),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'El Pepe',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Mis apellidos',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.orange,
               /* image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/fonfin.jpg'))*/
                    ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context){
                return Producto();
              }))
            },
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text('Perfil'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Mis compras'),
            onTap: () => {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            focusColor: Colors.black,
            title: Text('Mis favoritos'),
            onTap: () => {

            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),

      
    );
  }
}
