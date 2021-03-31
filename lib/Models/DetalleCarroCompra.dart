import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';

import 'Usuario.dart';

class DetalleCarroCompra{
  int iidDetalleCompra;
  int icantidad;
  int estado;
  //Usuario usuario;
  ProductoModel producto;

DetalleCarroCompra(this.iidDetalleCompra,this.icantidad,this.estado,/*this.usuario,*/this.producto);


  
}