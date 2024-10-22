import 'package:teste/data/models/veiculo_model.dart';

class ClienteModel {
  int? id;
  String? nome;
  String? sobrenome;
  String? cpf;
  DateTime? dataNascimento;
  String? telefone;
  String? email;
  DateTime? dataCadastro;
  String? observacao;
  List<VeiculoModel>? veiculos;

  ClienteModel({
    required this.id,
    required this.nome,
    required this.sobrenome,
    required this.cpf,
    required this.dataNascimento,
    required this.telefone,
    required this.email,
    required this.dataCadastro,
    required this.observacao,
    required this.veiculos,
  });

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['sobrenome'] = sobrenome;
    data['cpf'] = cpf;
    data['dataNascimento'] = dataNascimento;
    data['telefone'] = telefone;
    data['email'] = email;
    data['dataCadastro'] = dataCadastro;
    data['observacao'] = observacao;
    data['veiculos'] = veiculos!.map((veiculo) => veiculo.toMap()).toList();
    return data;
  }

  ClienteModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    sobrenome = json['sobrenome'];
    cpf = json['cpf'];
    dataNascimento = json['data_nascimento'];
    telefone = json['telefone'];
    email = json['email'];
    dataCadastro = json['data_cadastro'];
    observacao = json['observacao'];
    veiculos = json['veiculos'];
  }

  @override
  String toString() {
    return
      "Id: $id"
      "Nome: $nome\n"
      "Sobrenome: $sobrenome\n"
      "CPF: $cpf\n"
      "Data Nascimento: $dataNascimento\n"
      "Telefone: $telefone\n"
      "Email: $email\n"
      "Data Cadastro: $dataCadastro\n"
      "Observacao: $observacao\n"
      "Veículos: $veiculos";
  }
}
