import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:http/http.dart' as http;

String url = Constantes.URL_BACK+'api/tiendasProducto/listarProductoPorIdTienda';
String urldos = Constantes.URL_BACK+'api/productos/retornaRutaImagen';

///---------------------LISTAR PRODUCTO POR TIENDA---------------------------
List<ProductoModel> _list = <ProductoModel>[];
List<ProductoModel> get list => _list;
List<ProductoModel> listadoProducto = [];
var y;
Future<List<dynamic>> fetchListaProductoXTienda(int id) async{
  final response = await http.get(url+'/'+id.toString());
  if(response.statusCode == 200){
    final data = json.decode(response.body);  
    List<ProductoModel> u = [];
    for(var e in data['aaData']){
      u.add(ProductoModel(
      e['iidProducto'],e['dprecio'],e['snombre'],e['sdescripcion']
    ));
}
  return  data['aaData'];
  }else{
    throw Exception('Fallo que pena');
  }
}



//--------------------LISTAR IMAGEN DE PRODUCTOS------------------
Future<String> fetchImgProducto(int d) async{
  final response = await http.get(urldos+'/'+d.toString());
  if(response.statusCode == 200){
    final data = json.decode(response.body);      
    return  data['file'];
   }else{
     throw Exception('Fallo que pena');
   }
}