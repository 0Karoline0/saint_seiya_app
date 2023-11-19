import 'package:flutter/material.dart';
import 'package:saint_seiya/model/Categoria2.dart';
import 'package:saint_seiya/utils/Shadows.dart';

class RectangularListView extends StatefulWidget {
  List<Categoria2> categoria;

  RectangularListView({required this.categoria});

  @override
  State<RectangularListView> createState() => _RectangularListViewState();
}

class _RectangularListViewState extends State<RectangularListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoria.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(15)),
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green,
                        boxShadow: [SOMBRA_1]
                    ),
                    child: Image.asset(
                      widget.categoria[index].image,
                      height: 100,
                      fit: BoxFit.cover,
                      width: 20,
                    )),
                Text(widget.categoria[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}
