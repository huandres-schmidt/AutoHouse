import '../../core/constants/enum/funcao_mecanico.dart';

class TecnicoMecanico {
  int? id;
  String? nome;
  String? sobrenome;
  String? cpf;
  String? dataAdmissao;
  String? telefone;
  String? email;
  FuncaoMecanico? funcaoMecanico;

  TecnicoMecanico({
    required this.id,
    required this.nome,
    required this.sobrenome,
    required this.cpf,
    required this.dataAdmissao,
    required this.telefone,
    required this.email,
    required this.funcaoMecanico
  });

  Map<String, dynamic> toMap(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['sobrenome'] = sobrenome;
    data['cpf'] = cpf;
    data['data_admissao'] = dataAdmissao;
    data['telefone'] = telefone;
    data['email'] = email;
    data['funcao_mecanico'] = funcaoMecanico;
    return data;
  }

  TecnicoMecanico.fromMap(Map<String, dynamic> json){
    id = json['id'];
    nome = json['nome'];
    sobrenome = json['sobrenome'];
    cpf = json['cpf'];
    dataAdmissao = json['data_admissao'];
    telefone = json['telefone'];
    email = json['email'];
    funcaoMecanico = json['funcao_mecanico'];
  }

  @override
  String toString() {
  return
    "Id: $id\n"
    "Nome: $nome\n"
    "Sobrenome: $sobrenome\n"
    "CPF: $cpf\n"
    "Data Admissão: $dataAdmissao\n"
    "Telefone: $telefone\n"
    "Email: $email\n"
    "Função do Mecânico: $funcaoMecanico";
  }
}