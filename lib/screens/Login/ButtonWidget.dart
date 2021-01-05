
import 'package:flutter/material.dart';
import 'package:flutter_delivery_mov/screens/Login/login.dart';
import '../Registro/registro.dart';

class ButtonWidget extends StatelessWidget {

  final String title;
  final bool hasBorder;
  final Function onPressed;
  


  ButtonWidget({this.title, this.hasBorder, this.onPressed});

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
          onTap: onPressed,
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
        ),
      ),
    );
  }
}
