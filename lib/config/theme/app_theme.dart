import 'package:flutter/material.dart';

//crearemos un arreglo de colores
const colorList = <Color>[
  Colors.blue,
  Colors.orange,
  Colors.green,
  Colors.redAccent,
];

class AppTheme {
  final int selectedColor;

//con el assert nos aseguraremos que ningun programador del equipo asigne y seleccione un color que este fuera del arreglo.
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Seleccione un color mayor a 0');

  //creamos el condicional de donde desprende la informacion
  ThemeData getTheme() =>
      ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: colorList[selectedColor]);
}
