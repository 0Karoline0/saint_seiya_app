import 'package:flutter/material.dart';

class CalculoImagens{

  static double imagensRedondas(BuildContext context, double tamanho){
    double telaLargura = MediaQuery.of(context).size.width;

    if (telaLargura <= 350){
      return tamanho / 1;
    }else{
      return tamanho;
    }
  }

}