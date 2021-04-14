import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/DetalleCarroProvider.dart';
import 'package:flutter_application_1/Screens/Carrito/Carro.dart';
import 'package:flutter_application_1/Screens/Home/body.dart';
import 'package:provider/provider.dart';
import 'Provider/CatalogoProvider.dart';
import 'Screens/Login/login.dart';
import 'Screens/Navigations/NavDrawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Screens/Ubicacion/ubicacion.dart';


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

  //final Carro _listacarro = Carro();
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
      /*case 1:
      return _listacarro;
      break;*/
      case 1:
      return _ubicacion;
      break;
      case 2:
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
           // Icon(Icons.shopping_basket, size: 30, color: Colors.white),
            Icon(Icons.add_location, size: 30, color: Colors.white,),
            Icon(Icons.supervised_user_circle_sharp, size: 30, color: Colors.white,),
          ],
          color: Color(0xFFFF6B01),
          backgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = BounceInRight(child: _pageChooser(tappedIndex)); 
            });
          },
        ),
        body: _showPage,
        );
  }
}
