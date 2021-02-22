 import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:flutter_application_1/Services/TiendaService.dart';

class TiendaList extends StatefulWidget {
  const TiendaList({Key key}) : super(key: key);

  @override
  _TiendaListState createState() => _TiendaListState();
}

class _TiendaListState extends State<TiendaList> {
  
  Future<Tienda> futureTienda;

  @override
  void initState() {
    super.initState();
    //TiendaService().then(rss)
    futureTienda = TiendaService().listarTiendas();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Tienda>(
        future: futureTienda,
        builder: (context, snapshot){
          if (snapshot.data.snombreTienda!=null) {
            return Text("snapshot.data.sdescripcion");
          }else if (snapshot.data.snombreTienda==null) {
                return Text("${snapshot.error}");
            }
          return CircularProgressIndicator(); 
        },
      ),
    );
  }
}