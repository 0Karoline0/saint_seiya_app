import 'package:flutter/material.dart';
import 'package:saint_seiya/custom/containers/ContainerMenu.dart';
import 'package:saint_seiya/utils/images_path/Cavaleiros_Bronze.dart';
import 'package:saint_seiya/utils/images_path/Cavaleiros_Ouro.dart';
import 'package:saint_seiya/utils/images_path/Cavaleiros_Prata.dart';
import 'package:saint_seiya/utils/images_path/Coroa_Sol.dart';
import 'package:saint_seiya/utils/images_path/God_Warrior.dart';

class CustomDrawer extends StatelessWidget {

    List<String> cavaleiros_ouro = [
    'Mu de Áries',
    'Aldebaran de Touro',
    'Saga de Gêmeos',
    'Máscara da Morte de Câncer',
    'Aiolia de Leão',
    'Shaka de Virgem',
    'Dohko de Libra',
    'Milo de Escorpião',
    'Aiolos de Sagitário',
    'Shura de Capricórnio',
    'Camus de Aquário',
    'Afrodite de Peixes'
  ];
  List<String> cavaleiros_prata = [
    'Marin de Águia',
    'Shaina de Ophiuco',
    'Algol de Perseu',
    'Misty de Lagarto',
    'Asterion de Cães de Caça',
    'Orpheu de Lira',
  ];
    List<String> cavaleiros_bronze= [
    'Seiya de Pegasus',
    'Hyoga de Cisne',
    'Shiryu de Dragão',
    'Shun de Andrômeda',
    'Ikki de Fênix',
    'Jabu de Unicórnio',
    'June de Camaleão',
    'Ichi de Hidra',
  ];
  List<String> guerreiros_deuses = [
    'Siegfried de Dubhe',
    'Hagen de Merak',
    'Thor de Phecda',
    'Alberich de Megrez',
    'Shido de Alcor',
    'Bud de Alcor',
    'Fenrir de Alioth'
  ];
  List<String> cavaleiros_coroa_sol = [
    'Atlas de Carina',
    'Jaô de Lince',
    'Berengue de Coma Berenices'
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 0, 43, 106),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
              Center(
                  child: Image.asset(
                  'assets/imagens/logo_pt-br.png',
                  height: 60,
                )),
            const SizedBox(height: 10,),
            Divider(color: Colors.white.withOpacity(0.5), endIndent: 15, indent: 15,),
            const SizedBox(height: 10,),
            ContainerMenu(
              titulo: 'Cavaleiros de Ouro',
              cover: 'assets/imagens/elmos/virgem.png',
              nomes: cavaleiros_ouro,
            ),
            ContainerMenu(
              titulo: 'Cavaleiros de Prata',
              cover: 'assets/imagens/elmos/caes.png',
              nomes: cavaleiros_prata,
            ),
            ContainerMenu(
              titulo: 'Cavaleiros de Bronze',
              cover: 'assets/imagens/elmos/pegasus.png',
              nomes: cavaleiros_bronze,
            ),
            ContainerMenu(
              titulo: 'Guerreiros Deuses',
              cover: 'assets/imagens/elmos/megrez.png',
              nomes: guerreiros_deuses,
            ),
            ContainerMenu(
              titulo: 'Cavaleiros da Coroa do Sol',
              cover: 'assets/imagens/elmos/coroa_sol.png',
              nomes: cavaleiros_coroa_sol,
            ),
          ],
        ),
      ),
    );
  }
}
