import 'package:flutter/material.dart';
import 'package:saint_seiya/config/calculos/CalculoPadding.dart';
import 'package:saint_seiya/custom/carousel/CarouselImages.dart';
import 'package:saint_seiya/custom/listViews/RoundedListView.dart';
import 'package:saint_seiya/custom/inputs/SearchBar.dart';
import 'package:saint_seiya/custom/TitulosList.dart';
import 'package:saint_seiya/data/ImageLists/CavaleirosBronze.dart';
import 'package:saint_seiya/data/ImageLists/CavaleirosOuro.dart';
import 'package:saint_seiya/data/ImageLists/CavaleirosPrata.dart';
import 'package:saint_seiya/data/ImageLists/CoroaSol.dart';
import 'package:saint_seiya/data/ImageLists/GuerreirosDeuses.dart';
import 'package:saint_seiya/model/CarouselImagesModel.dart';
import 'package:saint_seiya/model/Categoria_Um.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';
import 'package:saint_seiya/utils/constantes/Padding.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => GeneralState();
}

class GeneralState extends State<General> {

  // List<Categoria2> categorias2 = [];
  List<CarouselImagesModel> carousel = [];


  List<Categoria_Um> guerreirosDeuses = [];
  List<Categoria_Um> cavaleirosOuro = [];
  List<Categoria_Um> coroaSol = [];
  List<Categoria_Um> cavaleirosBronze = [];
  List<Categoria_Um> cavaleirosPrata = [];


  @override
  void initState() {
    super.initState();
    guerreirosDeuses = Categoria_Um.getCategorias(GuerreirosDeuses.covers);
    cavaleirosOuro = Categoria_Um.getCategorias(CavaleirosOuro.covers);
    coroaSol = Categoria_Um.getCategorias(CoroaSol.covers);
    cavaleirosBronze = Categoria_Um.getCategorias(CavaleirosBronze.covers);
    cavaleirosPrata = Categoria_Um.getCategorias(CavaleirosPrata.covers);


    // categorias2 = Categoria2.getCategorias();
    carousel = CarouselImagesModel.getImages();
  }

  @override
  Widget build(BuildContext context) {

    Widget espacamento = SizedBox(height: CalculoPadding.calcularPaddingSeparadores(context, padding_entre_cards),);
    Widget espacamentoPequeno = SizedBox(height: CalculoPadding.calcularPaddingSeparadores(context, padding_bottom_cards),);

    return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                espacamento,
                const CustomSearchBar(),
                espacamento,

                Container(
                  color: Colors.white.withOpacity(0.3),
                  child: Column(
                    children: [
                      TitulosList(titulo: 'Destaques da Semana', style: TEXT_STYLE_16_W400_BRANCO),
                      CarouselImages(teste: carousel),
                      espacamentoPequeno
                    ],
                  ),
                ),

                espacamento,

                RoundedListView(titulo: 'Cavaleiros de Ouro', categoria: cavaleirosOuro,),
                espacamento,
                RoundedListView(titulo: 'Cavaleiros de Prata', categoria: cavaleirosPrata,),
                espacamento,
                RoundedListView(titulo: 'Cavaleiros de Bronze', categoria: cavaleirosBronze,),
                espacamento,
                RoundedListView(titulo: 'Guerreiros Deuses', categoria: guerreirosDeuses,),
                espacamento,
                RoundedListView(titulo: 'Cavaleiros da Coroa do Sol', categoria: coroaSol,),
                espacamento,

          ],
        ),
      );
  }
}