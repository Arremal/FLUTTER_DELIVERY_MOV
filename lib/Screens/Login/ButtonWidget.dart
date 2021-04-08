import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Registrar/registrar.dart';
import 'package:flutter_application_1/Screens/SplashScreen/SplashSreen.dart';

class ButtonWidget extends StatelessWidget {

  final String title;
  final bool hasBorder;


  ButtonWidget({this.title, this.hasBorder});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? Colors.white : Color(0xFFFF6B01),
          borderRadius: BorderRadius.circular(10),
          border: hasBorder ? Border.all(
              color: Color(0xFFFF6B01),
              width: 1.0
          )
              : Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60.0,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: hasBorder ? Color(0xFFFF6B01) : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0
                ),
              ),
            ),
          ),
          onTap: (){
            Navigator.push( context, MaterialPageRoute(builder: (context) => Registrar()));
          },
        ),
      ),
    );
  }
}