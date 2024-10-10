enum CilindradaMotor {
  umPontoZero(value: 1, cilindrada: '1.0'),
  umPontoTres(value: 2, cilindrada: '1.3'),
  umPontoCinco(value: 3, cilindrada: '1.5'),
  umPontoSeis(value: 4, cilindrada: '1.6'),
  umPontoOito(value: 5, cilindrada: '1.8'),
  doisPontoZero(value: 6, cilindrada: '2.0'),
  doisPontoCinco(value: 7, cilindrada: '2.5'),
  tresPontoZero(value: 8, cilindrada: '3.0'),
  tresPontoCinco(value: 9, cilindrada: '3.5'),
  quatroPontoZero(value: 10, cilindrada: '4.0'),
  quatroPontoSete(value: 11, cilindrada: '4.7'),
  cincoPontoZero(value: 12, cilindrada: '5.0');

  final int value;
  final String cilindrada;

  const CilindradaMotor({required this.value, required this.cilindrada});
}