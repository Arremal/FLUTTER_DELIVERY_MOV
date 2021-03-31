import 'dart:io';

import 'package:meta/meta.dart';

class ProductoModel{
  /*final*/ int iidProducto;
  /*final*/ double dprecio;
  /*final*/ String snombre, sdescripcion;
  bool addCar = false;
  int cantidad;
  //var image;

  ProductoModel(this.iidProducto, this.dprecio, this.snombre, this.sdescripcion, this.addCar);
  ProductoModel.carrito(this.iidProducto,this.addCar);


  /* ProductoModel({
    @required int iidProducto,
    @required double dprecio,
    @required String snombre,
    @required String sdescripcion,
    this.addCar = false,
    //estado
  });*/

 void toggleAdded(){
    addCar =! addCar;
  }

  /* factory ProductoModel.fromJson(Map <String , dynamic> productoJson) => new ProductoModel(
    iidProducto      : productoJson['iidProducto'],
    dprecio  : productoJson['dprecio'],
    snombre   : productoJson['snombre'],
    sdescripcion     : productoJson['sdescripcion'],
    //estado        : productoJson['iestado'],
  //  empresa        : productoJson['empresa']
  );*/
}