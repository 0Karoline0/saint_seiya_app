class PadronizadorImagem{

  static String padronizarTop(String personagem, String casta){
    return 'assets/imagens/personagens/top/$casta/${personagem}_top.png';
  }

  static String padronizarCover(String personagem, String casta){
    return 'assets/imagens/personagens/cover/$casta/${personagem}_cover.png';
  }
}