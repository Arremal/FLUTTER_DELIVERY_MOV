import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:flutter_application_1/Models/DetalleCarroCompra.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Models/TiendaProducto.dart';
import 'package:flutter_application_1/Models/Usuario.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';
import 'package:http/http.dart' as http;

class DetalleCarroProvider with ChangeNotifier{

  List<TiendaProducto> _tiendaproducto = [];
  List<TiendaProducto> get tiendaproducto => _tiendaproducto;
  
  List<DetalleCarroCompra> _detallecarro = [];
  List<DetalleCarroCompra> get detallecarro => _detallecarro;

    void addCarrito(DetalleCarroCompra det){
      DetalleCarroCompra deti = DetalleCarroCompra(det.icantidad+1,det.estado,det.producto);
      if(_detallecarro.contains(det)==true){
        //  var d = fetchTiendaProducto(det.producto.iidProducto);
          print('d');
        //  fetchTiendaProducto(det.producto.iidProducto);          
         _detallecarro.replaceRange(_detallecarro.indexOf(det), _detallecarro.indexOf(det)+1, [deti]);
    
      }else{
        _detallecarro.add(det);
      }
      notifyListeners();
    }

    void updateCantida(DetalleCarroCompra det){
      DetalleCarroCompra deto = DetalleCarroCompra(det.icantidad-1,det.estado,det.producto);
     if(deto.icantidad==0){
       print(det.icantidad);
       _detallecarro.remove(det);
     }else{
      /*_detallecarro.remove(det);
      _detallecarro.add(deto);*/
      print(_detallecarro.indexOf(det));
       _detallecarro.replaceRange(_detallecarro.indexOf(det), _detallecarro.indexOf(det)+1, [deto]);
    
     }
     
      notifyListeners();
    }

var u;
    
Future<List<dynamic>> fetchTiendaProducto(int i,DetalleCarroCompra det) async{
  String url = Constantes.URL_BACK+'api/tiendasProducto/listar';
  final response = await http.get(url);
  if(response.statusCode == 200){
    final data = json.decode(response.body);  
    u = data['aaData'][i]['istock'];
    /*TiendaProducto tiendaProducto = TiendaProducto(data['aaData'][i]['istock'],data['aaData'][i]['istock'],det.producto,i);
    _tiendaproducto.add(tiendaProducto);*/
    //print(data['aaData'][i]['istock']);
    return  data['aaData'];   
  }else{
    throw Exception('Fallo que pena');
  }
}


Future<List<dynamic>> insertarDetalleCarro(DetalleCarroCompra detalleCarroCompra) async{
  String url = Constantes.URL_BACK+'api/detalleCarro/registrar';
  Usuario usuario = Usuario();
  Tienda tienda = Tienda();
  TiendaProducto tiendaProducto = TiendaProducto(1, 3, detalleCarroCompra.producto, tienda);
  final response = await http.post(url,
  body: jsonEncode(<String,dynamic>{
    'usuario':usuario,
    'cantidad': detalleCarroCompra.icantidad,
    'tiendaProducto': detalleCarroCompra.icantidad,
    'estado':tiendaProducto
  }));
  if(response.statusCode == 200){
    final data = json.decode(response.body);  
    return  data['aaData'];   
  }else{
    throw Exception('Fallo que pena');
  }
}
 
}