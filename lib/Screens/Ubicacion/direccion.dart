import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Navigations/NavDrawer.dart';
import 'package:flutter_application_1/Screens/Checkout/custom_dialog_box.dart';
import 'package:google_fonts/google_fonts.dart';

class Direccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Confirmar dirección",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.navigate_before_sharp,color: Colors.black,),
                  onPressed: () {
                    Navigator.pop(context);
                  }
                )
      ),
        body: ListView(
          children: [
            Container(
              // padding: EdgeInsets.all(20.0),
              child: Image.network(
                  "https://elcomercio.pe/resizer/b0C3GIL5rJYEDXsr6lWFe6av-qU=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/UAGOCODQDJDNRG7KSJ7Z3PTJ2E.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 15.0, bottom: 10.0, top: 10.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 300.0),
                    child: Text(
                      "Dirección",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15.0)
                    ),
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black54, width: 0.5)
                          //border: BoxBorder()
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Ingrese su dirección',
                            labelStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 15.0
                          //fontWeight: FontWeight.bold
                        //fontSize: fosize,
                       //fontWeight: j,
                      ),
                            suffixIcon: Icon(Icons.create)),
                      )),
                  //2
                  Container(
                    padding: EdgeInsets.only(right: 315.0),
                    child: Text(
                      "Ciudad",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black54, width: 1.0)
                          //border: BoxBorder()
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ingrese su Ciudad',
                        ),
                      )),
                  //3
                  Container(
                    padding: EdgeInsets.only(right: 200.0),
                    child: Text(
                      "Agregar apto, piso, casa",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black54, width: 1.0)
                          //border: BoxBorder()
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Agregar instrucciones o casa, piso, apartamento',
                        ),
                      )),
                  //4
                  Container(
                    padding: EdgeInsets.only(right: 315.0),
                    child: Text(
                      "Etiqueta",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black54, width: 1.0)
                          //border: BoxBorder()
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Esta dirección aparecera como ej:',
                        ),
                      )),
                  // botonConfirmar(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text(
                        "Confirmar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialogBox(
                                title: "Guardado Correctamente",
                                descriptions:
                                    "Recuerda mantener tus datos actualizados",
                                text: "Ok",
                              );
                            });
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget botonConfirmar() {
  return FlatButton(
    color: Colors.orange,
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    onPressed: () {},
    child: Text("Confirmar",
        style: TextStyle(fontSize: 25.0, color: Colors.white)),
  );
}