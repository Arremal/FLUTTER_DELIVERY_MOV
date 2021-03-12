
import 'Empresa.dart';

class Tienda{

  int iddTienda;
  String snombreTienda;
  String sdescripcion;
  String sdireccion;
  int iestado;
  Empresa empresa;

  Tienda({this.iddTienda,this.snombreTienda,this.sdescripcion,this.sdireccion,this.iestado,this.empresa});
  
  factory Tienda.fromJson(Map <String , dynamic> tiendajson) => new Tienda(
    iddTienda      : tiendajson['iddTienda'],
    snombreTienda  : tiendajson['snombreTienda'],
    sdescripcion   : tiendajson['sdescripcion'],
    sdireccion     : tiendajson['sdireccion'],
    iestado        : tiendajson['iestado'],
    empresa        : tiendajson['empresa']
  );

  /*factory Tienda.fromLista(List <dynamic> tiendajson) => new Tienda(
    iddTienda      : tiendajson['iddTienda'],
    snombreTienda  : tiendajson['snombreTienda'],
    sdescripcion   : tiendajson['sdescripcion'],
    sdireccion     : tiendajson['sdireccion'],
    iestado        : tiendajson['iestado'],
    empresa        : tiendajson['empresa']
  );*/

  Map<String, dynamic> toJson() =>{
    "iddTienda"     : iddTienda,
    "snombreTienda" : snombreTienda,
    "sdescripcion"  : sdescripcion,
    "sdireccion"    : sdireccion,
    "iestado"       : iestado,
    "empresa"       : empresa
  };


  factory Tienda.fromMap(Map<String,dynamic> map){
    return Tienda(
      iddTienda      : map['iddTienda'],
      snombreTienda  : map['snombreTienda'],
      sdescripcion   : map['sdescripcion'],
      sdireccion     : map['sdireccion'],
      iestado        : map['iestado'],
      empresa        : map['empresa']
    );
  }


}

/*
class TiendaResponse {
  List<Tienda> aaData ;
  int estado;
  String msg ;

  TiendaResponse({
    this.tienda,
    this.estado,
    this.msg,
  });*/

//}