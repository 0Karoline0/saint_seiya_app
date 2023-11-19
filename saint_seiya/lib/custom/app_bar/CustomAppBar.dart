import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  Widget titulo;

  CustomAppBar({required this.titulo});

  @override
  Size get preferredSize => Size.fromHeight(85);

  @override
  Widget get child => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: Column(
        children: [
          PreferredSize(
            preferredSize: Size.infinite,
            child: AppBar(
              title: titulo,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: const Color.fromARGB(255, 0, 43, 106),
              // actions: [
              //   GestureDetector(
              //     onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
              //     child: const Icon(Icons.exit_to_app)
              //   ),
              //   SizedBox(width: 10),
              // ],
            ),
          ),
          Container(
            height: 5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.brown,
                  Colors.red,
                  Colors.yellow,
                  Colors.white
                ],
                    stops: [
                  0.1,
                  0.2,
                  0.7,
                  0.9
                ])),
          ),
        ],
      ),
    );
  }
}
