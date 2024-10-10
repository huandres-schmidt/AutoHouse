enum Marca {
  chevrolet(value: 1, url: 'https://www.chevrolet.com'),
  ford(value: 2, url: 'https://www.ford.com'),
  toyota(value: 3, url: 'https://www.toyota.com'),
  honda(value: 4, url: 'https://www.honda.com'),
  volkswagen(value: 5, url: 'https://www.volkswagen.com'),
  bmw(value: 6, url: 'https://www.bmw.com'),
  mercedes(value: 7, url: 'https://www.mercedes-benz.com'),
  audi(value: 8, url: 'https://www.audi.com'),
  nissan(value: 9, url: 'https://www.nissan.com'),
  kia(value: 10, url: 'https://www.kia.com');

  final int value;
  final String url;

  const Marca({required this.value, required this.url});
}