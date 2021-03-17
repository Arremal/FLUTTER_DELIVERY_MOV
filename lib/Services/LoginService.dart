import 'dart:convert';

import 'package:flutter_application_1/Common/Constantes.dart';
import 'package:http/http.dart' as http;

String url = Constantes.URL_BACK+'oauth/token';
String password = '12345';
String username = 'a@gmail.com';
///---------------LOGIN--------

String base = 'deliveryappmov:delivery\$Partner';
String basicAuth = 'Basic ' + base64Encode(utf8.encode(base));

Future<List<dynamic>> login() async{

  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded',
      'authorization':basicAuth
    },
    body: jsonEncode(<String, String>{
      'grant_type': 'password',
      'username' : username,
      'password' : password
    }),
  );

  if(response.statusCode == 200){
    print(base);
    print(basicAuth);
    final data = json.decode(response.body);
    print(data['aaData']);
    return data['aaData'];
   }else{
      print(base);
      print(basicAuth);
      print(response.statusCode);
      throw Exception('Fallo que pena :c');
   }
}
