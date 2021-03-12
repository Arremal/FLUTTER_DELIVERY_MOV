
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget informacion(String vari, double fosize, var j){
return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 5.0),
      child: Align(alignment: Alignment.topLeft,
        child: Text(vari,
          style: 
          GoogleFonts.robotoMono(
            fontSize: fosize,
            fontWeight: j,
          ),
        ),
      ),
    );
}

Widget textoCategoria(String texto, var colors){
  return Center(
    child: Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: colors
      )),
    );
}

Widget textoCard(String vari, double fosize, var j){
  return Text(vari,
          style: 
          GoogleFonts.roboto(
            fontSize: fosize,
            fontWeight: j,
            color: Colors.black
          ),
  );
}