import 'package:flutter_application_1/Models/tienda.dart';

class TiendaResponse{
  List<Tienda> aaData;
  int estado;
  String msg;

TiendaResponse({
    this.aaData,
    this.estado,
    this.msg,
});

/*Map<String, dynamic> toJson() =>{
    "aaData" : aaData,
    "estado" : estado,
    "msg"    : msg
  };*/

factory TiendaResponse.fromJson(Map<String , dynamic> parsedJson) {
  return new TiendaResponse(
    aaData : parsedJson['aaData'],
    estado  : parsedJson['estado'],
    msg     : parsedJson['msg'],
  );
}
  


/*factory TiendaResponse.fromJson(Map <String , dynamic> json) => new TiendaResponse(
    aaData  : json['aaData'],
    estado  : json['estado'],
    msg     : json['msg'],
  );

}*/

Map<String, dynamic> toJson(aaData, estado, msg) =>{
    "aaData" : aaData,
    "estado" : estado,
    "msg"    : msg
  };

}