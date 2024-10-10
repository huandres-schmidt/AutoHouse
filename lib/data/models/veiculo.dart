import '../../core/constants/enum/cilindrada_motor.dart';
import '../../core/constants/enum/cores.dart';
import '../../core/constants/enum/marca.dart';
import 'cliente.dart';

class VeiculoModel {
  String nome;
  String modelo;
  String placa;
  String ano;
  ClienteModel proprietario;
  CilindradaMotor cilindradaMotor;
  Cores cor;
  Marca marca;

  VeiculoModel({
   required this.nome,
   required this.modelo,
   required this.placa,
   required this.ano,
   required this.proprietario,
   required this.cilindradaMotor,
   required this.cor,
   required this.marca,
  });
}