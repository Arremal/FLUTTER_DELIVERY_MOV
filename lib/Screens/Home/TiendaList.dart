 import 'dart:convert';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

String url = 'http://64.227.109.195:3002/api/tiendas/listar';

Future<List<dynamic>> fetchListaTiendas() async{
  final response = await http.get(url);
  if(response.statusCode == 200){
    final data = json.decode(response.body);
    return data['aaData'];
   }else{
     throw Exception('Fallo que pena');
   }
}

  class Tiendita extends StatefulWidget {
    Tiendita({Key key}) : super(key: key);
  
    @override
    _TienditaState createState() => _TienditaState();
  }
  
  class _TienditaState extends State<Tiendita> {
  Widget _showPage = new Tiendita();
  final Producto _producto = Producto();

  @override
  void initState() {
   fetchListaTiendas();
    super.initState();
  }
    @override
    Widget build(BuildContext context) {
      return FutureBuilder<List<dynamic>>(
        future: fetchListaTiendas(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
           // print(snapshot.data);
            print("nksndkcsjdkcjs");
            print(snapshot.data[2]);
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
                          trailing: Icon(Icons.navigate_next,color: Colors.black,),
                          onTap: (){
                             Navigator.pop(context);
                                                      
                          },
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
