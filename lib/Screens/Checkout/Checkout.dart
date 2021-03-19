import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Checkout/custom_dialog_box.dart';

class Checkout extends StatefulWidget {
  Checkout({Key key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Checkout",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(right:20.0, left: 20.0, top:30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text("DIRECCIÓN DELIVERY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 15.0
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(color: Colors.black, width: 2.0)
                      //border: BoxBorder()
                    ),
                    child: Text("Mi dirección",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0
                    ),),
                  ),
                 Text("MÉTODO DE PAGO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 15.0
                  ),
                ),
                  Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(color: Colors.black, width: 2.0)
                      //border: BoxBorder()
                    ),
                    child: Text("Contra Entrega",
                      style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0
                    ),),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Sub Total', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                        ), 
                        textAlign: TextAlign.center),
                      ),
                      Expanded(
                        child: Text('S/.20', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        ), textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  Row(
              children: <Widget>[
                Expanded(
                  child: Text('Delivery', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('S/.10', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
    
              ],
              ),
            
              Row(
              children: <Widget>[
                Expanded(
                  child: Text('Total', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('S/.30', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ), textAlign: TextAlign.center),
                ),
    
              ],
              
              ),

              SizedBox(
                height: 20.0
              ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.08,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text("Pagar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        ),
                      ),
                    onPressed: () {
                      //Navigator.push( context, MaterialPageRoute(builder: (context) => Checkout()));
                      /*showDialog(context: context, child:
                        new AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          title: Column(
                            children: [
                              Text("Gracias por tu orden"),
                            ],
                          ),
                            content: new Text("Puedes rastrear tu pedido en el mapa"),
                        )
                      );*/

                      showDialog(context: context,
                        builder: (BuildContext context){
                          return CustomDialogBox(
                            title: "Gracias por tu orden",
                            descriptions: "Puedes rastrear tu pedido en el mapa",
                            text: "Aceptar",
                  );
                  }
                );
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                   ),

            ),
               ]
            ),
          ),
        ),
      ),
    );
  }

}