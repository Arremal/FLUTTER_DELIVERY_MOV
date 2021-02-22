import 'package:flutter/material.dart';

Widget Buttonon(){
  IgnorePointer(ignoring: true,);

  return Container(
    decoration: BoxDecoration(
        color: Color(0xFFFF6B01),
        borderRadius: BorderRadius.all(Radius.circular(25)
        )
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
  );
}

Widget Buttonheart(){
  IgnorePointer(ignoring: true,);
  return Container(
    decoration: BoxDecoration(
        color: Color(0xFFFF6B01),
        borderRadius: BorderRadius.all(Radius.circular(25)
        )
    ),
    child: Padding(
      padding: EdgeInsets.all(1.0),
      child: Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
    ),
  );
}