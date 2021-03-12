import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/ButtonHeart.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';

import 'TexiInformacion.dart';

class CardListon extends StatelessWidget {
  const CardListon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        height: 270.0,
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
                                  child: Image.asset("assets/comida.png",
                                      fit: BoxFit.cover,
                                      height: double.infinity),
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2,),
                                child: textoCard("Pollo a la brasa",18.0, FontWeight.bold),
                               
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2, top:2),
                                child: textoCard("Para mayor información",11.0, FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,top: 5,),
                                child: textoCard("S/.8.65",18.0, FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                                                  
                     /* Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),*/
                    ],
                  ),
                ),
              ),
              ///
             
              ///
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
                                padding: EdgeInsets.only(left: 2,right: 2,),
                                child: textoCard("Pollo a la brasa",18.0, FontWeight.bold),
                               
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2, top:2),
                                child: textoCard("Para mayor información",11.0, FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,top: 5,),
                                child: textoCard("S/.8.65",18.0, FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    
                     /* Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),*/
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
                                padding: EdgeInsets.only(left: 2,right: 2,),
                                child: textoCard("Pollo a la brasa",18.0, FontWeight.bold),
                               
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,right: 2, top:2),
                                child: textoCard("Para mayor información",11.0, FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 2,top: 5,),
                                child: textoCard("S/.8.65",18.0, FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                     
                     /* Padding(
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),*/
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
                        padding: EdgeInsets.only(top:235, left: 77.0),
                        child:  Buttonon(),
                      ),*/
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////
///
///
///

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
      duration: Duration(milliseconds: 250),
      
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Producto()));
            },
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.blueGrey[300],
                          borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Align(
                          child: Hero(
                              tag:1,child: Image.asset('assets/comida.png')),
                        )

                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 30,bottom: 20),
                    decoration: BoxDecoration(color: Colors.white,

                    boxShadow: shadowList,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)

                      )
                    ),

                  ))

                ],
              ),

            ),
          ),
          Container(
            height: 160,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadowList,
                        ),
                        margin: EdgeInsets.only(top: 20),
                      ),
                      Align(
                        child: Image.asset('assets/comida.png'),
                      )

                    ],
                  ),
                ),
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 30,bottom: 20),
                  decoration: BoxDecoration(color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      )
                  ),
                  
                //  child: Text("sdnskdnjksd"),
                ))

              ],
            ),

          ),
          SizedBox(height: 30,)

        ],
      ),
    );
  }
}



Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'images/horse.png'}
];