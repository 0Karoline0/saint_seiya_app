import 'package:flutter/material.dart';
import 'package:saint_seiya/custom/app_bar/CustomAppBar.dart';
import 'package:saint_seiya/custom/bottom_bar/BottomBar.dart';
import 'package:saint_seiya/custom/drawer/CustomDrawer.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';
import 'package:saint_seiya/view/screens/home/HistoricoPesquisa.dart';
import 'package:saint_seiya/view/screens/home/General.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexBottom = 0;

  Text getTituloAppBar(){

    String titulo = '';

    switch(indexBottom){
      case 0:
        titulo = 'Início';
      break;

      case 1:
        titulo = 'Últimos Pesquisados';
    }

    return Text(titulo, style: TEXT_STYLE_20_W400_BRANCO);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: CustomDrawer(),
        appBar: CustomAppBar(titulo: getTituloAppBar()),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/imagens/teste.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.35)),
          child: IndexedStack(
            index: indexBottom,
            children: const [General(), UserHistory()],
          ),
        ),
        bottomNavigationBar: BottomBar(index: indexBottom, onPressed: (index) {
          setState(() {
            indexBottom = index;
            print(index);
          });
        },));
  }
}
