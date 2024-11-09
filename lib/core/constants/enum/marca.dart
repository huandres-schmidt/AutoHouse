enum Marca {
  chevrolet(nome: 'Chevrolet', value: 1, assets: 'assets/marcas/chevrolet.png'),
  ford(nome: 'Ford', value: 2, assets: 'assets/marcas/ford.png'),
  toyota(nome: 'Toyota', value: 3, assets: 'assets/marcas/toyota.png'),
  honda(nome: 'Honda', value: 4, assets: 'assets/marcas/honda.png'),
  volkswagen(nome: 'Volkswagen', value: 5, assets: 'assets/marcas/volkswagen.png'),
  bmw(nome: 'BMW', value: 6, assets: 'assets/marcas/bmw.png'),
  mercedes(nome: 'Mercedes', value: 7, assets: 'assets/marcas/mercedes.png'),
  audi(nome: 'Audi', value: 8, assets: 'assets/marcas/audi.png'),
  nissan(nome: 'Nissan', value: 9, assets: 'assets/marcas/nissan.png');

  final String nome;
  final int value;
  final String assets;

  const Marca({required this.nome, required this.value, required this.assets});
}