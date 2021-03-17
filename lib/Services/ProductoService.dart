import 'dart:convert';

import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:http/http.dart' as http;

String url = Constantes.URL_BACK+'api/tiendasProducto/listarProductoPorIdTienda';
String urldos = Constantes.URL_BACK+'api/productos/listarProductoPorEmpresa';

///---------------------LISTAR PRODUCTO POR TIENDA---------------------------

Future<List<dynamic>> fetchListaProductoXTienda(int id) async{
  print(url+'/'+id.toString());
  final response = await http.get(url+'/'+id.toString());
  if(response.statusCode == 200){
    final data = json.decode(response.body);
    print(data['aaData']);
    return data['aaData'];
   }else{
     throw Exception('Fallo que pena');
   }
}

///--------------------LISTAR PRODUCTO POR EMPRESA-----------------------------