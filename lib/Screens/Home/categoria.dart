import 'package:flutter/material.dart';


Widget horizontalList2 = new Container(
    margin: EdgeInsets.symmetric(vertical: 5.0),
    height: 50.0,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF9F0DF),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Image.asset("assets/calabaza.png",
                      height: 70.0,) ,
                  ),
                  Text("Vegetables",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),)
                ],
              ),
              width: 140.0
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF9F0DF),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Image.asset("assets/fastcomida.png",
                    height: 70.0,) ,
                ),
                Text("Fast food",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),)
              ],
            ),
            width: 140.0,),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF9F0DF),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Image.asset("assets/calabaza.png",
                    height: 70.0,) ,
                ),
                Text("Vegetables",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),)
              ],
            ),
            width: 160.0,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xffF9F0DF),
            ),
            width: 160.0,),
        ),
      ],
    )
);