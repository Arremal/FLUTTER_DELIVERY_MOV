/*import 'dart:convert';

import 'package:flutter_application_1/Models/tienda.dart';
import 'package:flutter_application_1/Services/Client/TiendaClient.dart';

class TiendaService{

  TiendaClient tiendaClient = TiendaClient() ;
  final url = 'api/tiendas/listar';

  Future<TiendaResponse> tienda() async {
    GenericResponse response = await tiendaClient.get(url);
    return _tiendaResponseFromJson((response.estado==0) ? response.aaData : null, response.estado, response.msg);

  }

   TiendaResponse _tiendaResponseFromJson(String json,int estado, String msg) {
    var tiendaResponse = new TiendaResponse();
    tiendaResponse.tienda = (json != null) ? (jsonDecode(json) as List).map((tienda) => Tienda.fromMap(tienda)).toList() : [];
    tiendaResponse.estado = estado;
    tiendaResponse.msg = msg;
    return tiendaResponse ;
  }
}
*/
