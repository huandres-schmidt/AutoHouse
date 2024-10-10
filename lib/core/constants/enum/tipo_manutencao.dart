enum TipoManutencao {
  trocaOleo(value: 1, tipo: 'Troca de Óleo'),
  alinhamento(value: 2, tipo: 'Alinhamento e Balanceamento'),
  freios(value: 3, tipo: 'Revisão dos Freios'),
  trocaPneus(value: 4, tipo: 'Troca de Pneus'),
  bateria(value: 5, tipo: 'Verificação da Bateria'),
  filtroAr(value: 6, tipo: 'Troca do Filtro de Ar'),
  velas(value: 7, tipo: 'Substituição das Velas'),
  suspensao(value: 8, tipo: 'Revisão da Suspensão'),
  limpezaInjecao(value: 9, tipo: 'Limpeza da Injeção Eletrônica'),
  trocaCorreia(value: 10, tipo: 'Troca da Correia Dentada'),
  revisaoGeral(value: 11, tipo: 'Revisão Geral');

  final int value;
  final String tipo;

  const TipoManutencao({required this.value, required this.tipo});
}
