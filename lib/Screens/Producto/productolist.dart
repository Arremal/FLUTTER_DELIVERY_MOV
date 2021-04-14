import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Services/ProductoService.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductoList extends StatefulWidget {
  ProductoList(datin,{Key key}) : super(key: key);

  @override
  _ProductoListState createState() => _ProductoListState();
}

class _ProductoListState extends State<ProductoList> {
  
  int variable;
  @override
  void initState() {
   //fetchListaProductoXTienda(1);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: fetchListaProductoXTienda(variable),
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
                          title: Text(snapshot.data[index]['snombre'], style: GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),),
                          subtitle: Text(snapshot.data[index]['sdescripcion'], style: GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black38),),
                          trailing: IconButton(icon: Icon(Icons.navigate_next,color: Colors.black,),
                          onPressed: () {
                            //Navigator.push( context, MaterialPageRoute(builder: (context) => Producto()));
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