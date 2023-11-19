class Categoria2{
  String image;
  String name;

  Categoria2({
    required this.image,
    required this.name
  });

  static List<Categoria2> getCategorias(){
    List<Categoria2> categorias = [];

    categorias.add(
      Categoria2(image: 'https://cn-opweb-cdn.mobage.cn/cdn/wiki/seiya/static/img/role/avatar/%E8%B4%9D%E7%83%88%E5%B0%BC%E5%87%AF_y.png', name: 'Berengue')
    );

    categorias.add(
      Categoria2(image: 'https://cn-opweb-cdn.mobage.cn/cdn/wiki/seiya/static/img/role/avatar/%E8%A7%89%E9%86%92%C2%B7%E7%B1%B3%E7%BD%97_y.png', name: 'Milo')
    );

    categorias.add(
      Categoria2(image: 'https://cn-opweb-cdn.mobage.cn/cdn/wiki/seiya/static/img/role/avatar/%E5%8F%8C%E5%AD%90%E5%BA%A7%C2%B7%E5%8A%A0%E9%9A%86_y.png', name: 'Kanon')
    );

    categorias.add(
      Categoria2(image: 'https://cn-opweb-cdn.mobage.cn/cdn/wiki/seiya/static/img/role/avatar/%E8%89%BE%E6%AC%A7%E5%88%A9%E4%BA%9A%EF%BC%88%E5%8D%87%E5%8D%8E%E7%89%88%EF%BC%89_y.png', name: 'Aiolia')
    );

    return categorias;
  }

}