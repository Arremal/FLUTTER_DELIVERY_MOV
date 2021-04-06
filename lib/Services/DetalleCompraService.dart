import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:flutter_application_1/Models/DetalleCarroCompra.dart';
import 'package:http/http.dart' as http;

String url = Constantes.URL_BACK+'api/tiendasProducto/listarProductoPorIdTienda';


Future<http.Response> insertarDetalleCompra(DetalleCarroCompra detalleCarroCompra) {
  return http.post(
    Uri.https(url, 'albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    /*body: jsonEncode(<String, String>{
      'title': title,
    }),*/
  );
}