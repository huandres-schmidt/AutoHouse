import 'package:flutter/material.dart';
import 'package:teste/presentation/components/components_mask_formatter.dart';
import 'package:teste/presentation/components/components_text_form_field.dart';

import '../../../../core/constants/colors.dart';

class AdicionarMecanicoBody extends StatefulWidget {
  const AdicionarMecanicoBody({
    super.key,
  });

  @override
  State<AdicionarMecanicoBody> createState() => _AdicionarMecanicoBodyState();
}

class _AdicionarMecanicoBodyState extends State<AdicionarMecanicoBody> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerSobrenome = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  final TextEditingController _controllerDataNascimento =
      TextEditingController();
  String? tipoFuncaoSelecionada;

  List<String> item = List.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsContants.midnightDreams,
        toolbarHeight: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 8, right: 8, top: 8.0),
                  child: ListTile(
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    leading: const Icon(Icons.person),
                    title: Text(item[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: FloatingActionButton(
          onPressed: () {

          },
          child: const Icon(Icons.add),
        ),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(30.0),
    //   child: Wrap(
    //     alignment: WrapAlignment.center,
    //     children: [
    //       ComponentsTextFormField(
    //         maxLength: 35,
    //         labelText: 'Nome',
    //         controller: _controllerNome,
    //       ),
    //       ComponentsTextFormField(
    //         maxLength: 35,
    //         labelText: 'Sobrenome',
    //         controller: _controllerSobrenome,
    //       ),
    //       ComponentsTextFormField(
    //         maxLength: 14,
    //         labelText: 'CPF',
    //         controller: _controllerCpf,
    //         maskTextInputFormatter: ComponentsMaskFormatter().maskCpfFormatter,
    //       ),
    //       ComponentsTextFormField(
    //         maxLength: 10,
    //         labelText: 'Data nascimento',
    //         controller: _controllerDataNascimento,
    //         maskTextInputFormatter: ComponentsMaskFormatter().maskDataDiaMesAno,
    //       ),
    //       ComponentsTextFormField(
    //         maxLength: 15,
    //         labelText: 'Telefone',
    //         controller: _controllerTelefone,
    //         maskTextInputFormatter:
    //         ComponentsMaskFormatter().maskTelefoneFormatter,
    //       ),
    //       ComponentsTextFormField(
    //         maxLength: 50,
    //         labelText: 'E-mail',
    //         controller: _controllerEmail,
    //       ),
    //       RadioListTile<String>(
    //         title: Text(
    //           'Auxiliar',
    //           style: TextStyle(color: ColorsContants.midnightDreams),
    //         ),
    //         toggleable: true,
    //         activeColor: ColorsContants.midnightDreams,
    //         value: 'Auxiliar',
    //         groupValue: tipoFuncaoSelecionada,
    //         onChanged: (value) {
    //           setState(() {
    //             tipoFuncaoSelecionada = value.toString();
    //           });
    //         },
    //       ),
    //       RadioListTile<String>(
    //         title: Text(
    //           'Mecânico',
    //           style: TextStyle(color: ColorsContants.midnightDreams),
    //         ),
    //         toggleable: true,
    //         activeColor: ColorsContants.midnightDreams,
    //         value: 'Mecânico',
    //         groupValue: tipoFuncaoSelecionada,
    //         onChanged: (value) {
    //           setState(() {
    //             tipoFuncaoSelecionada = value.toString();
    //           });
    //         },
    //       ),
    //       RadioListTile<String>(
    //         title: Text(
    //           'Mecânico Chefe',
    //           style: TextStyle(color: ColorsContants.midnightDreams),
    //         ),
    //         toggleable: true,
    //         activeColor: ColorsContants.midnightDreams,
    //         value: 'Mecânico Chefe',
    //         groupValue: tipoFuncaoSelecionada,
    //         onChanged: (value) {
    //           setState(() {
    //             tipoFuncaoSelecionada = value.toString();
    //           });
    //         },
    //       ),
    //       const Spacer(),
    //       ElevatedButton.icon(
    //         onPressed: () {},
    //         icon: const Icon(Icons.person_add),
    //         label: const Text(
    //           'Adicionar Mecânico',
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
