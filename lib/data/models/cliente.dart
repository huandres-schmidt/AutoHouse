import 'package:teste/data/models/veiculo.dart';

class ClienteModel {
  String nome;
  String sobrenome;
  String cpf;
  List<VeiculoModel> veiculos;

  ClienteModel({
    required this.nome,
    required this.sobrenome,
    required this.cpf,
    required this.veiculos
  });
}