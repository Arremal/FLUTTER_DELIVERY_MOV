import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/ButtonHeart.dart';

class CardListon extends StatelessWidget {
  const CardListon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        height: 280.0,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom: 20.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 120,
                                  child: Image.asset("assets/comidafon.jpg",
                                      fit: BoxFit.cover,
                                      height: double.infinity),
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("Pollo a la brasa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 8,),
                                child: Text("Para mayor información",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("S/.8.65",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF6B01),
                                      fontSize: 20.0
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      /*Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),*/
                      Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom: 20.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 120,
                                  child: Image.asset("assets/comidafon.jpg",
                                      fit: BoxFit.cover,
                                      height: double.infinity),
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("Pollo a la brasa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 8,),
                                child: Text("Para mayor información",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("S/.8.65",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF6B01),
                                      fontSize: 20.0
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                     /* Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),*/
                      Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom: 20.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 120,
                                  child: Image.asset("assets/comidafon.jpg",
                                      fit: BoxFit.cover,
                                      height: double.infinity),
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("Pollo a la brasa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 8,),
                                child: Text("Para mayor información",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("S/.8.65",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF6B01),
                                      fontSize: 20.0
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      /*Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),*/
                      Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom: 20.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 120,
                                  child: Image.asset("assets/comidafon.jpg",
                                      fit: BoxFit.cover,
                                      height: double.infinity),
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("Pollo a la brasa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 8,),
                                child: Text("Para mayor información",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,top: 5,),
                                child: Text("S/.8.65",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF6B01),
                                      fontSize: 20.0
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      /*Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),*/
                      Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}