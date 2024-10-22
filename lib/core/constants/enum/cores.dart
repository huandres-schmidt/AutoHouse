enum Cor {
  vermelho(value: 1, cor: 'Vermelho'),
  azul(value: 2, cor: 'Azul'),
  verde(value: 3, cor: 'Verde'),
  amarelo(value: 4, cor: 'Amarelo'),
  preto(value: 5, cor: 'Preto'),
  prata(value: 6, cor: 'Prata'),
  branco(value: 7, cor: 'Branco'),
  cinza(value: 8, cor: 'Cinza'),
  marrom(value: 9, cor: 'Marrom'),
  dourado(value: 10, cor: 'Dourado'),
  laranja(value: 11, cor: 'Laranja'),
  roxo(value: 12, cor: 'Roxo'),
  rosa(value: 13, cor: 'Rosa'),
  azulMarinho(value: 14, cor: 'Azul Marinho'),
  verdeEscuro(value: 15, cor: 'Verde Escuro'),
  bege(value: 16, cor: 'Bege');

  final int value;
  final String cor;

  const Cor({required this.value, required this.cor});
}