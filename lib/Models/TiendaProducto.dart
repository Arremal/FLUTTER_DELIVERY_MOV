import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Models/tienda.dart';
import 'package:flutter_application_1/Screens/Producto/Producto.dart';

class TiendaProducto{
  int iidTiendaProducto;
  int istock;
  ProductoModel producto;
  Tienda tienda;

  TiendaProducto(this.iidTiendaProducto,this.istock, this.producto, this.tienda);

}