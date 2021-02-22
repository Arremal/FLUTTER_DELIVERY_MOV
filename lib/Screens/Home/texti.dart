import 'package:flutter/material.dart';

class Texti extends StatefulWidget {
  const Texti({Key key}) : super(key: key);

  @override
  _TextiState createState() => _TextiState();
}

class _TextiState extends State<Texti> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFFF6B01),
          ),
          height: 50.0,
          width: MediaQuery.of(context).size.width*0.70,
          child: TextField(
            decoration: InputDecoration(
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(end:5.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hoverColor: Colors.white,
              focusColor: Color(0xFFFF6B01),
              fillColor: Color(0xFFFF6B01),
              contentPadding:
              EdgeInsets.only(left: 20, top: 15.0, right: 15),
              hintText: "Search",
            ),
          ),
        )
    );
  }
}