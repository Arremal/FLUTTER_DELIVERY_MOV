import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/DetalleCarroProvider.dart';
import 'package:flutter_application_1/Screens/Checkout/custom_dialog_box.dart';
import 'package:flutter_application_1/Utils/formatPrice.dart';
import 'package:provider/provider.dart';

class Checkout extends StatefulWidget {
  Checkout({Key key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  var now = DateTime.now();
  
  String _value = '';

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(20100)
    );
    if(picked != null) setState(() => _value = picked.toString());
  }

  @override
  Widget build(BuildContext context) {
        final _detalleCarroProvider = Provider.of<DetalleCarroProvider>(context);

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
                  Row(
                    children: [
                      Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width/1.5,
                        margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black54, width: 2.0)
                                      //border: BoxBorder()
                        ),
                        child: Text("Mi dirección",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0
                        ),),
                      ),
                      SizedBox(width: 5.0),
                      Material(
                        color: Colors.white,
                        child: Center(
                          child: Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.orange,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.add_location_alt_sharp),
                              color: Colors.white,
                              onPressed: () {
                                
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("DIA DEL PEDIDO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 15.0
                  ),
                ),
                Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(color: Colors.black54, width: 2.0)
                                  //border: BoxBorder()
                    ),
                    child: Text(now.toString(),
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                    ),),
                  ),
                 
                Text("DIA DE ENTREGA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 15.0
                  ),
                ),             

                Row(
                    children: [
                      Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width/1.5,
                        margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black54, width: 2.0)
                                      //border: BoxBorder()
                        ),
                        child: Text(_value,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0
                        ),),
                      ),
                      SizedBox(width: 5.0),
                      Material(
                        color: Colors.white,
                        child: Center(
                          child: Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.orange,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.calendar_today),
                              color: Colors.white,
                              onPressed: () {
                                _selectDate();
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                 Text("MÉTODO DE PAGO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 15.0
                  ),
                ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(color: Colors.black54, width: 2.0)
                                  //border: BoxBorder()
                    ),
                    child: Text("Contra Entrega",
                      style: TextStyle(
                      color: Colors.black,
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
                        child: Text('S/.${formatTotal(_detalleCarroProvider.detallecarro)}', style: TextStyle(
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
                  child: Text('S/.${totalfinal(_detalleCarroProvider.detallecarro)}', style: TextStyle(
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
