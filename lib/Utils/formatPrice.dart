
import 'package:flutter_application_1/Models/ProductoModel.dart';

String formatTotal(List<ProductoModel> list) {
  return list.length > 0
      ? list
          .map<double>((m) => m.dprecio)
          .reduce((a, b) => a + b)
          .toStringAsFixed(2)
      : 0.toStringAsFixed(2);
}