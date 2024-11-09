import 'package:flutter/material.dart';
import 'package:teste/presentation/components/components_text_form_field.dart';

import '../../../components/components_mask_formatter.dart';

class AdicionarClienteBody extends StatelessWidget {
  const AdicionarClienteBody({
    super.key,
    required this.controllerNome,
    required this.controllerSobrenome,
    required this.controllerCpf,
    required this.controllerDataNascimento,
    required this.controllerTelefone,
    required this.controllerEmail,
  });

  final TextEditingController controllerNome;
  final TextEditingController controllerSobrenome;
  final TextEditingController controllerCpf;
  final TextEditingController controllerDataNascimento;
  final TextEditingController controllerTelefone;
  final TextEditingController controllerEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ComponentsTextFormField(
            maxLength: 35,
            labelText: 'Nome',
            controller: controllerNome,
          ),
          ComponentsTextFormField(
            maxLength: 35,
            labelText: 'Sobrenome',
            controller: controllerSobrenome,
          ),
          ComponentsTextFormField(
            maxLength: 14,
            labelText: 'CPF',
            controller: controllerCpf,
            maskTextInputFormatter: ComponentsMaskFormatter().maskCpfFormatter,
          ),
          ComponentsTextFormField(
            maxLength: 10,
            labelText: 'Data nascimento',
            controller: controllerDataNascimento,
            maskTextInputFormatter: ComponentsMaskFormatter().maskDataDiaMesAno,
          ),
          ComponentsTextFormField(
            maxLength: 15,
            labelText: 'Telefone',
            controller: controllerTelefone,
            maskTextInputFormatter:
                ComponentsMaskFormatter().maskTelefoneFormatter,
          ),
          ComponentsTextFormField(
            maxLength: 50,
            labelText: 'E-mail',
            controller: controllerEmail,
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_add),
            label: const Text(
              'Adicionar Cliente',
            ),
          ),
        ],
      ),
    );
  }
}
