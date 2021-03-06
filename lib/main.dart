import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/DetalleCarroProvider.dart';
import 'package:flutter_application_1/Routes/Routes.dart';
import 'package:flutter_application_1/Screens/Carrito/Carro.dart';
import 'package:flutter_application_1/Screens/Home/body.dart';
import 'package:flutter_application_1/Screens/Home/inicio.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';
import 'package:provider/provider.dart';
import 'Provider/CatalogoProvider.dart';
import 'Screens/Login/login.dart';
import 'Screens/Navigations/NavDrawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'Screens/SplashScreen/SplashSreen.dart';
import 'Screens/Ubicacion/ubicacion.dart';
import 'Screens/Usuario/Usuario.dart';


void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CatalogoProvider()),
      ChangeNotifierProvider(create: (_) => DetalleCarroProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),//Splash(),
      routes: <String, WidgetBuilder> {
        //'/a': (BuildContext context) => Producto(),
      },
    ),

  )
);

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  int pageIndex = 0;

  final Carro _listacarro = Carro();
  final Body _body = Body();
  final NavDrawer _navDrawer = NavDrawer();
  final Ubicacion _ubicacion = Ubicacion();

  var keygeneral ;
  
  Widget _showPage = new Body();

  Widget _pageChooser(int page){
    switch(page){
      case 0:
      return _body;
      break;
      case 1:
      return _listacarro;
      break;
      case 2:
      return _ubicacion;
      break;
      case 3:
      return _navDrawer;
      break;
      default: 
        return new Container(
          child: Center(
            child: new Text(
              "No se encontro nada"
            ),
          ),
        );
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white,),
            Icon(Icons.shopping_basket, size: 30, color: Colors.white),
            Icon(Icons.add_location, size: 30, color: Colors.white,),
            Icon(Icons.supervised_user_circle_sharp, size: 30, color: Colors.white,),
          ],
          color: Color(0xFFFF6B01),
          backgroundColor: Colors.white,
          //animationCurve: Curves.easeInOut,

          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = BounceInRight(child: _pageChooser(tappedIndex)); 
            });
          },
        ),
        body: _showPage,
/////////////////////////////////////////////////////////////////////
        
        );
  }
}

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        /*leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),*/
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
              },
            ),
          )
        ],
      ),

      body: Container(
        
      ),

      drawer: NavDrawer(),

      bottomNavigationBar: BottomNavBar()
    );
  }
}*/


////
/*
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.white,
               /* image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/fonfin.jpg'))*/
                    ),
            accountName: Text("Emily Emily",
              style: TextStyle(color: Colors.black),),
            accountEmail: Text("emilyemily@gmail.com",
              style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.iOS
                ? Color(0xFFFF6B01)
                : Color(0xFFFF6B01),
            child: Text(
              "E",
            style: TextStyle(fontSize: 40.0),
    ),
  ),
),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
              new Producto())
  );
            },
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text('Perfil'),
            onTap: () => {
              //Navigator.pushReplacementNamed(context, Routes.producto),
            },
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

        ),*/
///
///
///