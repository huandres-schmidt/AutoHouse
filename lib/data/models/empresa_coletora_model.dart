class EmpresaColetoraModel {
  int? id;
  String? nomeEmpresa;
  String? cnpj;
  String? produtosColetados;

  EmpresaColetoraModel({
    required this.id,
    required this.nomeEmpresa,
    required this.cnpj,
    required this.produtosColetados,
  });

  Map<String, dynamic> toMap(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome_empresa'] = nomeEmpresa;
    data['cnpj'] = cnpj;
    data['produtos_coletados'] = produtosColetados;
    return data;
  }

  EmpresaColetoraModel.fromMap(Map<String, dynamic> json){
    id = json['id'];
    nomeEmpresa = json['nome_empresa'];
    cnpj = json['cnpj'];
    produtosColetados = json['produtos_coletados'];
  }

  @override
  String toString() {
    return
    "id: $id\n"
    "Nome Empresa: $nomeEmpresa\n"
    "Cnpj: $cnpj\n"
    "Produtos Coletados: $produtosColetados\n";
  }
}