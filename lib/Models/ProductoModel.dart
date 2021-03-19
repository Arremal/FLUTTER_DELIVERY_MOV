import 'package:meta/meta.dart';

class ProductoModel{
  int id, estado;
  double precio;
  String nombre, descripcion;
  bool addCar;


   ProductoModel({
    @required id,
    @required nombre,
    @required descripcion,
    @required precio,
    this.addCar = false,
    estado
  });

 void toggleAdded(){
    addCar =! addCar;
  }

   factory ProductoModel.fromJson(Map <String , dynamic> productoJson) => new ProductoModel(
    id      : productoJson['iidProducto'],
    precio  : productoJson['dprecio'],
    nombre   : productoJson['snombre'],
    descripcion     : productoJson['sdescripcion'],
    estado        : productoJson['iestado'],
  //  empresa        : productoJson['empresa']
  );

}