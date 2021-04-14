import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Checkout/custom_dialog_box.dart';

class Usuario extends StatefulWidget {
  Usuario({Key key}) : super(key: key);

  @override
  _UsuarioState createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Mi profile",
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
      body: ListView(
        scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                /*Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/loki.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),*/


                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/loki.jpg")
                    ),
                  )
                ),
                  
                Positioned(
                  right: 100.0,
                  bottom: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(50.0)),
                       color: Color(0xFFFF6B01),
                    ),
                    
                    child: IconButton(
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,), onPressed: () {  },
                
                ),
                  ),
                )
              ],
              

            ),
            
            
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0),),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text("Mi email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF6B01),
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
                      color: Color(0xffF5F5F5),
                      //border: Border.all(color: Colors.black54, width: 2.0)
                                  //border: BoxBorder()
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'a@gmail.com'
                      ),
                    )
                    ),


                    Text("Mi contraseña",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF6B01),
                        fontSize: 15.0
                      ),
                    ),
                    Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffF5F5F5),
                     // border: Border.all(color: Colors.black54, width: 2.0)
                                  //border: BoxBorder()
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '********'
                      ),
                    )
                    ),


                    Text("Mi celular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF6B01),
                        fontSize: 15.0
                      ),
                    ),
                  
                    Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffF5F5F5),
                      //border: Border.all(color: Colors.black54, width: 2.0)
                                  //border: BoxBorder()
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '987654321'
                      ),
                    )
                    ),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.09,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Color(0xFFFF6B01),
                          child: Text("Actualizar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),
                          ),
                        onPressed: () {
                          showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                title: "Guardado Correctamente",
                                descriptions: "Recuerda mantener tus datos actualizados",
                                text: "Aceptar",
                      );
                      }
                    );
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
      );
  }
}