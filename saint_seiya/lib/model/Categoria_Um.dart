

class Categoria_Um {
  String img;

  Categoria_Um({required this.img});

  static List<Categoria_Um> getCategorias(List<String> lista){

    List<Categoria_Um> categorias = [];
    List<String> cavaleiros = lista;


    for (String imagePath in cavaleiros){
      categorias.add(Categoria_Um(img: imagePath));
    }

    return categorias;
  }
}
