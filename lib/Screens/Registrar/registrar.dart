import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Checkout/custom_dialog_box.dart';
import 'package:flutter_application_1/Screens/Login/TextFieldWidget.dart';

class Registrar extends StatefulWidget {
  Registrar({Key key}) : super(key: key);

  @override
  _RegistrarUserState createState() => _RegistrarUserState();
}

String valueChoose;

final generoSelected = TextEditingController();

List listItem = ["Hombre", "MUJER", "INDEFINIDO"];

class _RegistrarUserState extends State<Registrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Color(0xFFFAFAFA),
          title: Text(
            "Registro",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.navigate_before_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 35.0, left: 35.0, right: 35.0, bottom: 35.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFieldWidget(
                          hintText: 'Nombre', obscureData: false,
                          prefixIconData: Icons.person
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFieldWidget(
                          hintText: 'Primer Apellido', obscureData: false,
                          prefixIconData: Icons.person
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFieldWidget(
                          hintText: 'Segundo Apellido', obscureData: false,
                          prefixIconData: Icons.person
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        
                        Container(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffF5F5F5),
                          //border: Border.all()
                          ),
                          child: DropdownButton(
                            hint: Text(
                              "Genero",
                              style: TextStyle(
                                color:  Color(0xFFFF6B01),
                              ),
                            ),
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36.0,
                            value: valueChoose,
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: listItem.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(
                                  valueItem,
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFieldWidget(
                          hintText: 'Teléfono', obscureData: false,
                          prefixIconData: Icons.phone
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFieldWidget(
                          hintText: 'Email', obscureData: false,
                          prefixIconData: Icons.mail_outline
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFieldWidget(
                          hintText: 'Contraseña', obscureData: false,
                          prefixIconData: Icons.lock_outline
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container( 
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.09,
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Color(0xFFFF6B01),
                            child: Text("Registrar",
                              style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0
                              ),
                            ),
                            onPressed: () {
                              Navigator.push( context, MaterialPageRoute(builder: (context) => Registrar()));
                            },
                          shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
