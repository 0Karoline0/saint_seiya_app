import 'package:flutter/material.dart';
import 'package:saint_seiya/utils/Shadows.dart';
import 'package:saint_seiya/utils/Text_Styles.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [SOMBRA_1]),
              height: 50,
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                    style: TEXT_STYLE_14_W500_BRANCO,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.white,),
                        hintText: 'Pesquisar...',
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(Icons.filter_alt, color: Colors.white,),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                        disabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none)
                        ),
                  ),
                ),
              ),
            ),
          );
  }
}