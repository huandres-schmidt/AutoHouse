import '../../core/constants/enum/funcao_mecanico.dart';

class MecanicoModel {
  String nome;
  String sobrenome;
  String cpf;
  String dataAdmissao;
  FuncaoMecanico funcaoMecanico;

  MecanicoModel({
    required this.nome,
    required this.sobrenome,
    required this.cpf,
    required this.dataAdmissao,
    required this.funcaoMecanico
  });
}