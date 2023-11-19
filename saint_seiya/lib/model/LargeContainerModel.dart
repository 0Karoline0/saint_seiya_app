class Position{
  final double top;
  final double bottom;
  final double left;
  final double right;

  Position({this.top = 0, this.bottom = 0, this.left = 0, this.right = 0});
}

class LargeContainerModel{
  String titulo;
  String subtitulo;
  String imagem;

  LargeContainerModel({
    required this.titulo,
    required this.subtitulo,
    required this.imagem,
  });
}