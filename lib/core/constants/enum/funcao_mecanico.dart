enum FuncaoMecanico {
  auxiliar(value: 1, nome: 'Auxiliar'),
  intermediario(value: 2, nome: 'Intermediário'),
  mestre(value: 3, nome: 'Mestre'),
  chefe(value: 4, nome: 'Chefe Mecânico');

  final String nome;
  final int value;

  const FuncaoMecanico({required this.value, required this.nome});
}