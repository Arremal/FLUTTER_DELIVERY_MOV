
import 'package:flutter_application_1/Models/DetalleCarroCompra.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Provider/DetalleCarroProvider.dart';

/*String formatTotal(List<ProductoModel> list) {
  return list.length > 0
      ? list
          .map<double>((m) => m.dprecio)
          .reduce((a, b) => a + b)
          .toStringAsFixed(2)
      : 0.toStringAsFixed(2);
}*/

String formatTotal(List<DetalleCarroCompra> list) {
  return list.length > 0
      ? list
          .map<double>((m) => m.producto.dprecio*m.icantidad)
          .reduce((a, b) => a + b)
          .toStringAsFixed(2)
      : 0.toStringAsFixed(2);
}


String totalProd(DetalleCarroCompra det) {
  return (det.icantidad*det.producto.dprecio).toString();
}


String totalfinal(List<DetalleCarroCompra> list){
  var d = formatTotal(list);
 // double.parse(d);
  var myInt = double.parse(d);
  //assert(myInt is int);
print(myInt); // 12345
 // myInt+10;
 return (myInt+10).toString();
}