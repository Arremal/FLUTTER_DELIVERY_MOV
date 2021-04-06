import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';

import 'Usuario.dart';

class DetalleCarroCompra{
  //int iidDetalleCompra;
  int icantidad;
  int estado;
  bool addCar = true;
  //Usuario usuario;
  ProductoModel producto;

DetalleCarroCompra(this.icantidad,this.estado,/*this.usuario,*/this.producto);

void toggleAdded(){
    addCar =! addCar;
  }
  
}