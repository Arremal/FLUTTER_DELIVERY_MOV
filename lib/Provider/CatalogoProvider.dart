import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Services/ProductoService.dart';

class CatalogoProvider with ChangeNotifier{

  List<ProductoModel> _catalogo = [];
  List<ProductoModel> get catalogo => _catalogo;

  void addToCatalogo(ProductoModel productoModel){
     _catalogo.add(productoModel);
    notifyListeners();
  }

  void removeFromCatalogo(ProductoModel productoModel){

    _catalogo.remove(productoModel);
    notifyListeners();
  }


  void todoProducto(List<ProductoModel> productoModel){
  }


  
}