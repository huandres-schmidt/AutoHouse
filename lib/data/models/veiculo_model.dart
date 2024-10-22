import '../../core/constants/enum/cilindrada_motor.dart';
import '../../core/constants/enum/cores.dart';
import '../../core/constants/enum/marca.dart';
import 'cliente_model.dart';

class VeiculoModel {
  int? id;
  String? modelo;
  String? placa;
  String? ano;
  Marca? marca;
  CilindradaMotor? cilindradaMotor;
  Cor? cor;
  ClienteModel? proprietario;

  VeiculoModel({
    required this.id,
    required this.modelo,
    required this.placa,
    required this.ano,
    required this.marca,
    required this.proprietario,
    required this.cilindradaMotor,
    required this.cor,
  });

  Map<String, dynamic> toMap(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['modelo'] = modelo;
    data['placa'] = placa;
    data['ano'] = ano;
    data['marca'] = marca;
    data['cilindrada_motor'] = cilindradaMotor;
    data['cor'] = cor;
    data['proprietario'] = proprietario;
    return data;
  }

  VeiculoModel.fromMap(Map<String, dynamic> json){
    id = json['id'];
    modelo = json['modelo'];
    placa = json['placa'];
    ano = json['ano'];
    marca = json['marca'];
    cilindradaMotor = json['cilindrada_motor'];
    cor = json['cor'];
    proprietario = json['proprie´ario'];
  }

  @override
  String toString() {
    return
    "Id: $id"
    "Modelo: $modelo\n"
    "Placa: $placa\n"
    "Ano: $ano\n"
    "Marca: $marca\n"
    "Cilindrada do Motor: $cilindradaMotor\n"
    "Cor: $cor\n"
    "Proprietário: $proprietario\n";
  }
}
