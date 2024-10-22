import 'package:teste/core/constants/enum/tipo_manutencao.dart';
import 'package:teste/data/models/tecnico_mecanico_model.dart';
import 'package:teste/data/models/veiculo_model.dart';

class ManutencaoModel {
  int? id;
  TipoManutencao? tipoManutencao;
  String? nomeProblema;
  String? dataReparo;
  String? relatorio;
  double? custoManutencao;
  int? quilometragem;
  String? garantia;
  TecnicoMecanico? mecanico;
  VeiculoModel? veiculo;

  ManutencaoModel({
    required this.id,
    required this.tipoManutencao,
    required this.nomeProblema,
    required this.dataReparo,
    required this.quilometragem,
    required this.relatorio,
    required this.custoManutencao,
    required this.garantia,
    required this.mecanico,
    required this.veiculo,
  });

  Map<String, dynamic> toMap(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome_problema'] = nomeProblema;
    data['data_reparo'] = dataReparo;
    data['quilometragem'] = quilometragem;
    data['relatorio'] = relatorio;
    data['custo_manutencao'] = custoManutencao;
    data['garantia'] = garantia;
    data['mecanico'] = mecanico;
    data['veiculo'] = veiculo;
    return data;
  }

  ManutencaoModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    tipoManutencao = TipoManutencao.values[json['tipo_manutencao']];
    nomeProblema = json['nome_problema'];
    dataReparo = json['data_reparo'];
    relatorio = json['relatorio'];
    custoManutencao = json['custo_manutencao'];
    quilometragem = json['quilometragem'];
    garantia = json['garantia'];
    mecanico = TecnicoMecanico.fromMap(json['mecanico']);
    veiculo = VeiculoModel.fromMap(json['veiculo']);
  }

  @override
  String toString() {
  return
    "Id: $id\n"
    "Nome Problema: $nomeProblema\n"
    "Quilometragem: $quilometragem\n"
    "Data Reparo: $dataReparo\n"
    "Relatório: $relatorio\n"
    "Custo manutenção: $custoManutencao\n"
    "Garantia: $garantia\n"
    "Mecânico: $mecanico\n"
    "Veículo: $veiculo\n"
    "Tipo manutenção: $tipoManutencao\n";
  }
}
