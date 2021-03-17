import 'dart:convert';

import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:http/http.dart' as http;

String url = Constantes.URL_BACK+'api/tiendas/listar';

///---------------------LISTAR TIENDAS---------------------------

Future<List<dynamic>> fetchListaTiendas() async{
  final response = await http.get(url);
  if(response.statusCode == 200){
    final data = json.decode(response.body);
    return data['aaData'];
   }else{
     throw Exception('Fallo que pena');
   }
}