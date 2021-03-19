import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:http/http.dart' as http;

String url = Constantes.URL_BACK+'api/tiendasProducto/listarProductoPorIdTienda';
String urldos = Constantes.URL_BACK+'api/productos/listarProductoPorEmpresa';

///---------------------LISTAR PRODUCTO POR TIENDA---------------------------
List<ProductoModel> _list = <ProductoModel>[];
List<ProductoModel> get list => _list;
List<ProductoModel> listadoProducto = [];

Future<List<dynamic>> fetchListaProductoXTienda(int id) async{
  print(url+'/'+id.toString());
  final response = await http.get(url+'/'+id.toString());
  if(response.statusCode == 200){
    final data = json.decode(response.body);
   // ProductoModel.fromJson(data['aaData']);
  //  print(listadoProducto);
 // fechita(id);
    return data['aaData'];
   }else{
     throw Exception('Fallo que pena');
   }
}
//prueba
Future<ProductoModel> fechita(int id) async{
  print(url+'/'+id.toString());
  final response = await http.get(url+'/'+id.toString());
  if(response.statusCode == 200){
    final data = json.decode(response.body);
    var j = ProductoModel.fromJson(data['aaData']);
  //  print(listadoProducto);
  print('njskd');
  print(j.nombre);
    return ProductoModel.fromJson(jsonDecode(data['aaData']));
   }else{
     throw Exception('Fallo que pena');
   }
}

///--------------------LISTAR PRODUCTO POR EMPRESA-----------------------------
///
addToList(List<dynamic> dato){
  /*for(var it =0; it > dato.length; it++){
    print('ppppppp');
    print(dato);
  }*/
  dato.forEach(
    (element) => _list.add(
      ProductoModel(
        id: element['iidProducto'],
        nombre: element['snombre'],
        precio: element['dprecio'],
        descripcion: element['sdescripcion'],
      )
    )
  );
  //print(_list.length);
  for(int i=0;i>_list.length;i++){
  _list.contains(i);
  print(_list);

  }

 /* for(var it in dato){
//_list.add(widget.);
  print("dndsjk");
  //_list.add(it);
  print(it['iidProducto']);
       // notifyListeners();
  }*/
    }