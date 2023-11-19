import 'package:flutter/material.dart';
import 'package:saint_seiya/config/calculos/CalculoPadding.dart';
import 'package:saint_seiya/config/padronizadores/PadronizadorImagem.dart';
import 'package:saint_seiya/custom/containers/LargeContainer.dart';
import 'package:saint_seiya/custom/TitulosList.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';
import 'package:saint_seiya/utils/constantes/Padding.dart';
import 'package:saint_seiya/utils/images_path/Cavaleiros_Bronze.dart';
import 'package:saint_seiya/utils/images_path/Cavaleiros_Ouro.dart';
import 'package:saint_seiya/utils/images_path/Coroa_Sol.dart';
import 'package:saint_seiya/utils/images_path/God_Warrior.dart';
import 'package:saint_seiya/utils/images_path/Sem_Constelacao.dart';


class UserHistory extends StatefulWidget {
  const UserHistory({super.key});

  @override
  State<UserHistory> createState() => UserHistoryState();
}

class UserHistoryState extends State<UserHistory> {

  @override
  Widget build(BuildContext context) {

    Widget espacamento = SizedBox(height: CalculoPadding.calcularPaddingSeparadores(context, padding_entre_cards),);

    String guerreirosDeuses = 'guerreiros_deuses';
    String ouro = 'cavaleiros_ouro';


    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          LargeContainer(
            titulo: 'Fenrir de Alioth',
            subtitulo: 'Filiação: Guerreiros Deuses',
            imagem: PadronizadorImagem.padronizarTop('fenrir', guerreirosDeuses),
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,
          LargeContainer(
            titulo: 'Alberich de Megrez',
            subtitulo: 'Filiação: Guerreiros Deuses',
            imagem: PadronizadorImagem.padronizarTop('alberich', guerreirosDeuses),
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,
          LargeContainer(
            titulo: 'Afrodite de Peixes',
            subtitulo: 'Filiação: Cavaleiros de Atena',
            imagem: afrodite_top,
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,
          LargeContainer(
            titulo: 'Leda',
            subtitulo: 'Filiação: Cavaleiros de Atena',
            imagem: leda_top,
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,
          LargeContainer(
            titulo: 'Bado de Alcor',
            subtitulo: 'Filiação: Guerreiros Deuses',
            imagem: PadronizadorImagem.padronizarTop('bado', guerreirosDeuses),
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,
          LargeContainer(
            titulo: 'Shido de Mizar',
            subtitulo: 'Filiação: Guerreiros Deuses',
            imagem: shido_top,
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,
          LargeContainer(
            titulo: 'Aiolia de Leão',
            subtitulo: 'Filiação: Cavaleiros de Atena',
            imagem: aiolia_top,
            scale: 15,
            heightFactor: 1,
          ),
          espacamento,




        ],
      ),
    );
  }
}
