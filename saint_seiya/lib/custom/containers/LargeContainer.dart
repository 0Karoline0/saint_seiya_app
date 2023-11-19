import 'package:flutter/material.dart';
import 'package:saint_seiya/utils/Shadows.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';

class LargeContainer extends StatefulWidget {
  String titulo;
  String subtitulo;
  String imagem;
  double heightFactor;
  double left;
  double bottom;
  double scale;
  Alignment alignmentImage;

  LargeContainer({
    required this.titulo,
    required this.subtitulo,
    required this.imagem,
    required this.heightFactor,
    this.alignmentImage = Alignment.center,
    this.scale = 2.5,
    this.left = 0,
    this.bottom = 0,
  });

  @override
  State<LargeContainer> createState() => _LargeContainerState();
}

class _LargeContainerState extends State<LargeContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                boxShadow: [SOMBRA_1],
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15)),
            child: Row(children: [
              const Spacer(
                flex: 5,
              ),
              Expanded(
                flex: 9,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.titulo,
                        style: TEXT_STYLE_16_W400_BRANCO,
                      ),
                      Text(
                        widget.subtitulo,
                        style: TEXT_STYLE_12_W200_BRANCO,
                      ),
                    ]),
              ),
              const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30,
                  )),
            ]),
          ),
          Positioned(
              bottom: 0,
              left: -20,
              child: ClipRect(
                  clipBehavior: Clip.hardEdge,
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: Image.asset(
                      widget.imagem,
                      width: 150,
                    ),
                  )))
        ],
      ),
    );
  }
}
