import 'package:flutter/material.dart';

class ContainerMenu extends StatefulWidget {
  String titulo;
  String cover;
  List<String> nomes;

  ContainerMenu({
    required this.titulo,
    required this.cover,
    required this.nomes
  });

  @override
  State<ContainerMenu> createState() => _ContainerMenuState();
}

class _ContainerMenuState extends State<ContainerMenu> {

  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpand = !isExpand;
              });
            },
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                          widget.cover,
                          height: 60,
                        )),
                    Expanded(flex: 5, child: Text(widget.titulo)),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          !isExpand ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )),
                  ]),
            ),
          ),
          const SizedBox(height: 5),
          AnimatedSize(
            duration: const Duration(milliseconds: 900),
            curve: Curves.fastOutSlowIn,
            child: isExpand
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        itemBuilder: (context, index) {
                          return Container(
                              alignment: Alignment.centerLeft,
                              width: double.infinity,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: index % 2 == 0
                                  ? Colors.white.withOpacity(0.6)
                                  : Colors.white.withOpacity(0.4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(widget.nomes[index]),
                              ));
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 10,
                            ),
                        itemCount: widget.nomes.length),
                  )
                : null,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
