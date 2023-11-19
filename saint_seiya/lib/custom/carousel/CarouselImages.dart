import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saint_seiya/model/CarouselImagesModel.dart';

class CarouselImages extends StatefulWidget {
  List<CarouselImagesModel> teste;

  CarouselImages({required this.teste});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  late PageController _pageController;
  int _currentPage = 0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _timer = Timer.periodic(const Duration(seconds: 7), (timer) {
      setState(() {
        _changePageRight();
      });
    },);
  }

  void _changePageRight(){
    setState(() {
      if (_currentPage == widget.teste.length-1){
        _currentPage = 0;
      }else{
          _currentPage++;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  void _changePageLeft(){
    setState(() {
      if (_currentPage == 0){
        _currentPage = widget.teste.length-1;
      }else{
        _currentPage--;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.teste.length,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                color: Colors.transparent,
                width: double.infinity,
                child:
                    Image.asset(widget.teste[index].image, fit: BoxFit.fill),
              );
            },
          ),
        ),
        SizedBox(
          height: 190,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _changePageLeft();
                        },
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius:
                                    BorderRadiusDirectional.circular(15)),
                            child: Icon(Icons.keyboard_arrow_left)),
                      ),
                      GestureDetector(
                        onTap: () {
                          _changePageRight();
                        },
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius:
                                    BorderRadiusDirectional.circular(15)),
                            child: Icon(Icons.keyboard_arrow_right)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(
                          widget.teste.length,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: index == _currentPage
                                          ? Colors.pink
                                          : Colors.black,
                                      border: Border.all(
                                          color: Colors.yellow, width: 1.5)),
                                ),
                              ))),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
