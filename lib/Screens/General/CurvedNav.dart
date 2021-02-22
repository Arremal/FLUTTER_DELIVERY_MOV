import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 1,
      height: 50.0,
      items: <Widget>[
          Icon(Icons.local_dining, size: 20, color: Colors.white,),
          Icon(Icons.home, size: 20, color: Colors.white),
          Icon(Icons.view_module, size: 20, color: Colors.white,),
        ],
        color: Color(0xFFFF6B01),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
              _page = index;
            });
        },
        
      );
  }
}