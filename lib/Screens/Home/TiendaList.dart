import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';
import 'package:flutter_application_1/Services/LoginService.dart';
import 'package:flutter_application_1/Services/ProductoService.dart';
import 'package:flutter_application_1/Services/TiendaService.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/Provider/CatalogoProvider.dart';
import 'package:provider/provider.dart';

  class Tiendita extends StatefulWidget {
    Tiendita({Key key}) : super(key: key);
  
    @override
    _TienditaState createState() => _TienditaState();
  }
  
  class _TienditaState extends State<Tiendita> {
    
  @override
  void initState() {
    fetchListaTiendas();
    //login();

    super.initState();
  }
 
    @override
    Widget build(BuildContext context) {
      final _catalogProvider = Provider.of<CatalogoProvider>(context, listen: false);

      return FutureBuilder<List<dynamic>>(
        future: fetchListaTiendas(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 2.0),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column( 
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://picsum.photos/250?image=9')
                          ),
                          title: Text(snapshot.data[index]['snombreTienda'], style: GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),),
                          subtitle: Text(snapshot.data[index]['sdireccion'], style: GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black38),),
                          trailing: IconButton(icon: Icon(Icons.navigate_next,color: Colors.black,),
                          onPressed: () {
                            Navigator.push( context, MaterialPageRoute(builder: (context) => Producto(todo: snapshot.data[index]['iidTienda'],)));
                            
                            //Navigator.push( context, MaterialPageRoute(builder: (context) => Producto(todo: snapshot.data[index],)));

                            //_catalogProvider.addToCatalogo(productoModel);
                            //RouteSettings(arguments: ProductoModel())
                          }
                            )
                        ),
                      ]
                    ),
                  ),
                );
              },
            );
          }
          else if (snapshot.hasError) {
            print("${snapshot.error}");
            return Text("${snapshot.error}");
          } 
          return CircularProgressIndicator();
    }
      );
  }
  }
