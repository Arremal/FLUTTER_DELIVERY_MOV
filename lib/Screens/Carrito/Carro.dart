import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/CatalogoProvider.dart';
import 'package:flutter_application_1/Provider/DetalleCarroProvider.dart';
import 'package:flutter_application_1/Screens/Checkout/Checkout.dart';
import 'package:flutter_application_1/Utils/formatPrice.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Carro extends StatefulWidget {
  Carro({Key key}) : super(key: key);

  @override
  _CarroState createState() => _CarroState();
}

class _CarroState extends State<Carro> {

  @override
  Widget build(BuildContext context) {
    //final _catalogoProvider = Provider.of<CatalogoProvider>(context);
    final _detalleCarroProvider = Provider.of<DetalleCarroProvider>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Mi carrito",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.navigate_before_sharp,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
           }
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _detalleCarroProvider.detallecarro.length,
              itemBuilder: (context, index) => ListTile(
                leading: //Image.file(file: File('')),
                CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                ),
                title: Text(
                  '${_detalleCarroProvider.detallecarro[index].producto.snombre}',
                  style: GoogleFonts.rubik(
                    fontSize: 17, ),
                ),
                subtitle: Row(
                  children: [
                    IconButton(icon: Icon(
                      Icons.add_circle,color: Color(0xFFFF6B01),),
                      onPressed: (){
                        _detalleCarroProvider.addCarrito(_detalleCarroProvider.detallecarro[index]);
                      }
                    ),
                    
                    Text('${_detalleCarroProvider.detallecarro[index].icantidad}'),
                    IconButton(
                      icon: Icon(Icons.do_not_disturb_on,color: Color(0xFFFF6B01),), 
                      onPressed: (){
                          _detalleCarroProvider.updateCantida(_detalleCarroProvider.detallecarro[index]);
                      }
                    )
                  ],
                ),
                trailing: Text('S/.${totalProd(_detalleCarroProvider.detallecarro[index])}', style: TextStyle(color: Colors.black, fontSize: 17.0),)
              
              )),
          ),
          Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.20,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:10),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Tu orden', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('S/.${formatTotal(_detalleCarroProvider.detallecarro)}', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
    
              ],
              
              ),
            Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.08,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Checkout",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),),
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => Checkout()));
                  },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
  ),

            ),
          )
          ],
        ),
      )
    )

        ],
      )
    );
  }
}

/*

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
        Totalfinal()
      ],
    );
  }
}*/

/*

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
*/
/*class Totalfinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.20,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:10),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Tu orden', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('${_catalogoProvider.catalogo[index].snombre}', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
    
              ],
              
              ),
            Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.08,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Checkout",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),),
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => Checkout()));
                  },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
  ),

            ),
          )
          ],
        ),
      )
    );
  }
}
*/
Widget boton(){
  return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
            //  width: MediaQuery.of(context).size.width,
            //  height: MediaQuery.of(context).size.height*0.08,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Continuar",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),),
                  onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
  ),

            ),
          );
}