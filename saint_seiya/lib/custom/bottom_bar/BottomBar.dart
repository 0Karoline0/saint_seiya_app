import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  Function(int index) onPressed;
  int index;

  BottomBar({
    required this.onPressed,
    required this.index
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 70,
          child: Column(
            children: [
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
                  stops: [0.1, 0.2, 0.7, 0.9]
                )),
              ),
              BottomNavigationBar(
                backgroundColor: const Color.fromARGB(255, 0, 43, 106),
                showSelectedLabels: true,
                selectedItemColor: Colors.white,
                selectedIconTheme: IconThemeData(size: 30),

                showUnselectedLabels: false,
                unselectedItemColor: Colors.white,
                unselectedIconTheme: IconThemeData(color: Colors.white),
                onTap: widget.onPressed,
                currentIndex: widget.index,
                items: const [
                  BottomNavigationBarItem(
                    label: 'Início',
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: 'Histórico',
                    icon: Icon(Icons.history)
                  ),
                ],
              ),
            ],
          ),
        );
  }
}