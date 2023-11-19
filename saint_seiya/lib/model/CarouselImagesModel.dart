class CarouselImagesModel{
  String image;

  CarouselImagesModel({
    required this.image
  });

  static List<CarouselImagesModel> getImages(){
    List<CarouselImagesModel> carousel = [];

    carousel.add(
      CarouselImagesModel(image: 'assets/imagens/destaques/1.png'),
    );

    carousel.add(
      CarouselImagesModel(image: 'assets/imagens/destaques/2.jpg'),
    );

    carousel.add(
      CarouselImagesModel(image: 'assets/imagens/destaques/3.png'),
    );

    carousel.add(
      CarouselImagesModel(image: 'assets/imagens/destaques/4.jpg'),
    );

    return carousel;
  }


}