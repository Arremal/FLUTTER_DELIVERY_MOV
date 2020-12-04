import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'bodyn.dart';
class home extends StatefulWidget {
  @override
  _mainState createState() => _mainState();
}

class _mainState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:  Colors.white,
        buttonBackgroundColor: Color(0xFFFF6B01),
        color: Colors.white,
        items: <Widget>[
          Icon(Icons.home, size: 40, color: Colors.white,
          ),
          Icon(Icons.local_dining, size: 40, color: Colors.black38,),
          Icon(Icons.view_module, size: 40, color: Colors.black38,),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: body1(),
      backgroundColor: Color(0xFFFAFAFA),
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu,
            color: Colors.black,),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
              },
            ),
          )
        ],
      ),
    );
  }
}


class body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              texti(),
              butonserh()
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: horizontalList2,
          ),
          cardliston(),
          letras()
        ],
      ),
    );
  }
}


class texti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffF3F3F3),
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
              prefixIcon: Icon(Icons.search),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hoverColor: Color(0xFFFF6B01),
              focusColor: Color(0xFFFF6B01),
              fillColor: Color(0xFFFF6B01),
              contentPadding:
              EdgeInsets.only(left: 20, top: 15, right: 15),
              hintText: "Search",
            ),
          ),
        )
    );
  }
}

class butonserh extends StatelessWidget {
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


class categoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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





























class cardliston extends StatelessWidget {
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
                      Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),
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
                      Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),
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
                      Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),
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
                      Padding(
                        padding: EdgeInsets.only(left: 130.0),
                        child:  Buttonheart(),
                      ),
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

class letras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0, right:20.0),
                child: Text(
                  "Items Populares",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Text("View all Items",
                style: TextStyle(
                    color: Color(0xFF3F51B5)
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 200.0,
                  child: new ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: products.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return new Text(products[index]);
                    },
                  ),
                ),
              ),
              new IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () {},
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          )
        ],
      ),
    );
  }
}
const products = ["hola","adios"];
class bottomitems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
