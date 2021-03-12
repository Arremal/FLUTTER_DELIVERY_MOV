import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/TexiInformacion.dart';

class Carro extends StatefulWidget {
  Carro({Key key}) : super(key: key);

  @override
  _CarroState createState() => _CarroState();
}

class _CarroState extends State<Carro> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
        Listacarrito()
      ],
    );
  }
}



class Listacarrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.48,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Column(
                  children: <Widget>[
                    contin(),
                    contin(),
                    contin(),
                    contin(),
                    contin(),
                    contin(),
                    contin(),
                  ],
                ),
              )
            ],

          ),
        ),
        totalfinal()
      ],
    );
  }
}



class contin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.15,
      child: Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width*0.20,
              child: Image.asset("assets/comida.png")),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.50,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Tallarines verdes",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Nombre Tienda",
                  ),
                ),
                textoCard("S/.5",17.0,FontWeight.bold)
              ],
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF6B01),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),topLeft: Radius.circular(25.0))
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF6B01),
                    borderRadius: BorderRadius.only()
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 13.0,right: 13.0,bottom: 6.0),
                  child: Text("5",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF6B01),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0))
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.do_not_disturb_on,
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

class totalfinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.28,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                child: Text("Sub Total",
                style: TextStyle(
                  fontSize: 15.0
                ),)
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.45,),
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("30",
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("Cupón ",
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.45,),
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("    30",
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("Delivery ",
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.45,),
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("  30",
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("Total ",
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.45,),
              Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Text("       30",
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.08,
              decoration: BoxDecoration(
                  color: Color(0xFFFF6B01),
                  borderRadius: BorderRadius.all(Radius.circular(35.0))
              ),
              child: Center(
                child: Text('Continuar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
