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
  print(id);
  if(response.statusCode == 200){
    final data = json.decode(response.body);
      print("jjjjjjjjjjjjjjjj");
      
List<ProductoModel> u = [];



print(data['aaData'].length);

for(var e in data['aaData']){
  print(e['iidProducto']);
  u.add(ProductoModel(
    e['iidProducto'],e['dprecio'],e['snombre'],e['sdescripcion'],false
  ));
  
}
    return  data['aaData'];
   }else{
     throw Exception('Fallo que pena');
   }
}


//----------------------------------------------------------
///---------------------LISTAR PRODUCTO POR TIENDA---------------------------
/*List<ProductoModel> _list = <ProductoModel>[];
List<ProductoModel> get list => _list;
List<ProductoModel> listadoProducto = [];

Future<List<ProductoModel>> fetchListaProductoXTienda(int id) async{
  print(url+'/'+id.toString());
  final response = await http.get(url+'/'+id.toString());
  print(id);
  if(response.statusCode == 200){
    final data = json.decode(response.body);
      print("jjjjjjjjjjjjjjjj");
      
List<ProductoModel> u = [];



print(data['aaData'].length);

for(var e in data['aaData']){
  print(e['iidProducto']);
  u.add(ProductoModel(
    e['iidProducto'],e['dprecio'],e['snombre'],e['sdescripcion'],false
  ));
  
}
    return  u;
   }else{
     throw Exception('Fallo que pena');
   }
}*/