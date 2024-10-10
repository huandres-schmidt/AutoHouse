import 'package:teste/core/constants/enum/tipo_manutencao.dart';
import 'package:teste/data/models/cliente.dart';
import 'package:teste/data/models/mecanico.dart';
import 'package:teste/data/models/veiculo.dart';

class ManutencaoModel {
  String nomeProblema;
  int quilometragem;
  String dataReparo;
  String relatorio;
  double custoManutencao;
  String garantia;
  MecanicoModel mecanico;
  VeiculoModel veiculo;
  TipoManutencao tipoManutencao;
  ClienteModel cliente;

  ManutencaoModel({
    required this.nomeProblema,
    required this.quilometragem,
    required this.dataReparo,
    required this.relatorio,
    required this.custoManutencao,
    required this.garantia,
    required this.mecanico,
    required this.veiculo,
    required this.tipoManutencao,
    required this.cliente
  });
}