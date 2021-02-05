import 'package:flutter_application_1/Models/Empresa.dart';

class Tienda{

  final int iddTienda;
  String snombreTienda;
  String sdescripcion;
  final String sdireccion;
  final int iestado;
  final Empresa empresa;

  Tienda({this.iddTienda,this.snombreTienda,this.sdescripcion,this.sdireccion,this.iestado,this.empresa});

  factory Tienda.fromJson(Map<String,dynamic> json){
    return Tienda(
      iddTienda: json['iddTienda'],
      snombreTienda: json['snombreTienda'],
      sdescripcion: json['sdescripcion'],
      sdireccion: json['sdireccion'],
      iestado: json['iestado'],
      empresa: json['empresa'],
      );
  }

  /*Tienda.fromJson(Map json){
      iddTienda: json['iddTienda'];
      snombreTienda: json['snombreTienda'];
      sdescripcion: json['sdescripcion'];
      sdireccion: json['sdireccion'];
      iestado: json['iestado'];
      empresa: json['empresa'];
  }
    
    Map toJson(){
      return{'iddTienda':iddTienda,'snombreTienda':snombreTienda,'sdescripcion':sdescripcion,'sdireccion':sdireccion,'iestado':iestado,'empresa':empresa};
    }
*/

}