class EnderecoModel {
  int? id;
  String? rua;
  String? numero;
  String? complemento;
  String? bairro;
  String? cidade;
  String? estado;
  String? cep;
  int? idTecnicoMecanico;
  int? idCliente;
  int? idEmpresaColetora;

  EnderecoModel({
    required this.id,
    required this.rua,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
    this.idCliente,
    this.idEmpresaColetora,
    this.idTecnicoMecanico,
  });

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['rua'] = rua;
    data['numero'] = numero;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['cidade'] = cidade;
    data['estado'] = estado;
    data['cep'] = cep;
    data['idCliente'] = idCliente;
    data['idEmpresaColetora'] = idEmpresaColetora;
    data['idTecnicoMecanico'] = idTecnicoMecanico;
    return data;
  }

  EnderecoModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    rua = json['rua'];
    numero = json['numero'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    estado = json['estado'];
    cep = json['cep'];
    idCliente = json['id_cliente'];
    idEmpresaColetora = json['id_empresa_coletora'];
    idTecnicoMecanico = json['id_tecnico_mecanico'];
  }

  @override
  String toString() {
    return
      "Id: $id"
      "Rua: $rua\n"
      "Número; $numero\n"
      "Complemento: $complemento\n"
      "Bairro: $bairro\n"
      "Cidade: $cidade\n"
      "Estado: $estado\n"
      "Cep: $cep\n"
      "idTecnicoMecanico: $idTecnicoMecanico\n"
      "idCliente: $idCliente\n"
      "idEmpresaColetora: $idEmpresaColetora";
  }
}
