import 'package:flutter/material.dart';
import 'package:saint_seiya/config/calculos/CalculoImagens.dart';
import 'package:saint_seiya/custom/TitulosList.dart';
import 'package:saint_seiya/model/Categoria_Um.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';
import 'package:saint_seiya/utils/constantes/ImagensTamanho.dart';

class RoundedListView extends StatefulWidget {
  final List<Categoria_Um> categoria;
  final String titulo;

  RoundedListView({
    required this.titulo,
    required this.categoria
  });

  @override
  State<RoundedListView> createState() => _RoundedListViewState();
}

class _RoundedListViewState extends State<RoundedListView> {

  @override
  Widget build(BuildContext context) {


    double tamanho = CalculoImagens.imagensRedondas(context, imagensRedondas);

    return Container(
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            TitulosList(titulo: widget.titulo, style: TEXT_STYLE_16_W400_BRANCO,),
            SizedBox(
              height: tamanho,
              width: double.infinity,
              child: ListView.separated(
                itemCount: widget.categoria.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                      height: tamanho,
                      width: tamanho,
                      child: ClipOval(
                          child: Image.asset(
                        widget.categoria[index].img,
                        width: tamanho,
                        height: tamanho,
                      )));
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
