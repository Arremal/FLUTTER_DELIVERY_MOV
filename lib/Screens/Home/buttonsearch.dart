import 'package:flutter/material.dart';

class Buttonsearch extends StatelessWidget {
  const Buttonsearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: Color(0xFFFF6B01),
            borderRadius: BorderRadius.all(Radius.circular(10.0),)
        ),
        child: Icon(
          Icons.wrap_text,
          color: Colors.white,),
      ),
    );
  }
}