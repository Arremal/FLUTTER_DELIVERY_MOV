import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';

class DrawerPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children: <Widget>[
            DrawerHeader(
              
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orangeAccent
                ]
                )
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/user.png',
                        width: 80,
                        height: 80,
                      ),
                    )
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                      'Joseph Santos',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomListTile(
              Icons.home,
              'Home',
              () => {},
            ),
            CustomListTile(
              Icons.settings,
              'Ajustes de Cuenta',
              ()=>{}
            ),
            CustomListTile(
              Icons.map_sharp,
              'Mis Direcciones',
              ()=>{
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context){
                return Producto();
              }))}
            ),
            CustomListTile(Icons.create,'Perfil',()=>{}),
            CustomListTile(Icons.shopping_cart,'Mis Pedidos',()=>{}),
            CustomListTile(Icons.favorite,'Mis favoritos',()=>{}),
            CustomListTile(Icons.exit_to_app, 'Logout', () => {Navigator.of(context).pop()})
          ],  
        )
    );
  }
}


class CustomListTile extends StatelessWidget {

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade400))
      ),
      child: InkWell(
      splashColor: Colors.orangeAccent,
      onTap: onTap,
      child: Container(        
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(icon),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(text, 
                style: TextStyle(
                    fontSize: 17.0
                ),
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_right)
        ],
      ),
      ),
    )
    ),
  );
  }
}