import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/DetalleCarroCompra.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';

class DetalleCarroProvider with ChangeNotifier{
  
  List<DetalleCarroCompra> _detallecarro = [];
  List<DetalleCarroCompra> get detallecarro => _detallecarro;

    void addCarrito(DetalleCarroCompra det){
      DetalleCarroCompra deti = DetalleCarroCompra(det.iidDetalleCompra,det.icantidad+1,det.estado,det.producto);
      if(_detallecarro.contains(det)==true){
        _detallecarro.remove(det);
        _detallecarro.add(deti);
      }else{
        _detallecarro.add(det);
      }
      notifyListeners();
    }

  /*  void removeFromCatalogo(DetalleCarroCompra det){
    //  DetalleCarroCompra deti = DetalleCarroCompra(1,det.icantidad+1,det.estado,det.producto);
      
      _detallecarro.remove(det);
      notifyListeners();
    }*/

    void updateCantida(DetalleCarroCompra det){
      DetalleCarroCompra deto = DetalleCarroCompra(det.iidDetalleCompra,det.icantidad-1,det.estado,det.producto);
     // _detallecarro.replaceRange(det, end, [deto]);
     if(deto.icantidad==0){
       print(det.icantidad);
       _detallecarro.remove(det);
     }else{
      _detallecarro.remove(det);
      _detallecarro.add(deto);
     }
     
      notifyListeners();
    }

    

 
}