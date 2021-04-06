import 'dart:convert';

import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Models/TiendaProducto.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:http/http.dart' as http;

List<TiendaProducto> u;

String url = Constantes.URL_BACK+'api/tiendasProducto/listar';

Future<List<dynamic>> fetchTiendaProducto() async{
  final response = await http.get(url);
  if(response.statusCode == 200){
    final data = json.decode(response.body);  
    print(data['aaData']);
    return  data['aaData'];   
  }else{
    throw Exception('Fallo que pena');
  }
}
