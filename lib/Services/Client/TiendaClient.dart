import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:http/http.dart' as http;

class TiendaClient{

  Future<GenericResponse> get (String path) async {
    try{
      final response = await http.get(Constantes.URL_BACK + path);
      if(response.statusCode == 200){
        return  _genericResponseFromJson(response.body,0, "");
      }else {
          return _genericResponseFromJson(null,1, response.body);
      }

    }catch(e){
      if( e.toString().contains("No route to host") ||
          e.toString().contains("No address associated with hostname") ||
          e.toString().contains("Connection refused") ||
          e.toString().contains("Network is unreachable") ) {
        return _genericResponseFromJson(null,1, "Consulte la conexión de datos o wifi de su dispositivo, no es posible conectarse con el servidor.");
      } else {
         return _genericResponseFromJson(null,1, 'Error interno. Contacte con los desarrolladores. Detalles: ${e.toString()}');
      
        }
    }
  }

}

GenericResponse _genericResponseFromJson(dynamic aaData, int estado, String msg) {
  var genericResponse = new GenericResponse();
  genericResponse.aaData = aaData ;
  genericResponse.estado = estado;
  genericResponse.msg = msg;
  return genericResponse ;
}


class GenericResponse {
  dynamic aaData ;
  int estado ;
  String msg ;
  GenericResponse({
    this.aaData,
    this.estado,
    this.msg,
  });
}