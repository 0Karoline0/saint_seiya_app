import 'package:flutter/material.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';

class TitulosList extends StatefulWidget {
  String titulo;
  TextStyle? style;

  TitulosList({required this.titulo, this.style});

  @override
  State<TitulosList> createState() => _TitulosListState();
}

class _TitulosListState extends State<TitulosList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 8),
      child: Row(
        children: [
          Text(
            widget.titulo,
            style: widget.style ?? TEXT_STYLE_16_W400,
          )
        ],
      ),
    );
  }
}
