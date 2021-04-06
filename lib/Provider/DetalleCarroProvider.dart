import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/DetalleCarroCompra.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';

class DetalleCarroProvider with ChangeNotifier{
  
  List<DetalleCarroCompra> _detallecarro = [];
  List<DetalleCarroCompra> get detallecarro => _detallecarro;

    void addCarrito(DetalleCarroCompra det){
      DetalleCarroCompra deti = DetalleCarroCompra(det.icantidad+1,det.estado,det.producto);
      if(_detallecarro.contains(det)==true){
        
         _detallecarro.replaceRange(_detallecarro.indexOf(det), _detallecarro.indexOf(det)+1, [deti]);
    
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

    

 
}