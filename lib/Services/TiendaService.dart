import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:http/http.dart' as http;

class TiendaService{

  /*static Future listarTiendas(){
    var url = Constantes.URL_BACK + "api/tiendas/listar";
    print(Constantes.URL_BACK);
    return http.get(url);
  }*/

  /*Future<http.Response> listarTiendas(http.Client client) async {
    return client.get(Constantes.URL_BACK + "api/tiendas/listar");
  }*/

  /*Future<List<Tienda>> listarTiendas(http.Client client) async {
  final response =
      await client.get(Constantes.URL_BACK + 'api/tiendas/listar');
      return compute(parseTienda, response.body);
  }

  List<Tienda> parseTienda(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Tienda>((json) => Tienda.fromJson(json)).toList();
}*/


Future<Tienda> listarTiendas() async {
  final response = await http.get(Constantes.URL_BACK + 'api/tiendas/listar');
  print(response.toString());
  return Tienda.fromJson(jsonDecode(response.body));

  /*print(response);
  if (response.statusCode == 200) {
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }*/
}


}
