import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Checkout/custom_dialog_box.dart';
import 'package:flutter_application_1/Screens/Login/Registrar.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text(
          "Iniciar Sesion",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        // leading: IconButton(
        //     icon: Icon(
        //       Icons.navigate_before_sharp,
        //       color: Colors.black,
        //     ),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     }),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 35.0, left: 35.0, right: 35.0, bottom: 35.0),
        child: Column(
          children: [
            Positioned(
              left: Constants.padding,
              right: Constants.padding,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: Constants.avatarRadius,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.avatarRadius)),
                    child: Image.asset("assets/man.png")),
              ),
            ),
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
                    Text(
                      "TU EMAIL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 15.0),
                    ),
                    Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border:
                                Border.all(color: Colors.black54, width: 2.0)
                            //border: BoxBorder()
                            ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'a@gmail.com'),
                        )),
                    Text(
                      "TU CONTRASEÑA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 15.0),
                    ),
                    Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border:
                                Border.all(color: Colors.black54, width: 2.0)
                            //border: BoxBorder()
                            ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: '********'),
                        )),

                    /*TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Celular',
                        focusColor: Colors.black54,
                        //focusedBorder: Colors.black54
                      ),

                    ),*/

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.08,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text(
                          "Ingresar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        onPressed: () {
                          //  aqui va codigo de autentificacion
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text(
                          "Registrarse",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Registrar();
                            }),
                          );
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
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
    );
  }
}
