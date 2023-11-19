import 'package:flutter/material.dart';

class CalculoPadding{

  static double calcularPaddingSeparadores(BuildContext context, double padding){
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 350){
      return padding / 2;
    }else{
      return padding;
    }
  }

}