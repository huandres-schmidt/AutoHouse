import 'package:flutter/material.dart';
import 'package:teste/presentation/components/components_text_form_field.dart';

import '../../../components/components_mask_formatter.dart';

class AdicionarClienteBody extends StatelessWidget {
  const AdicionarClienteBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerNome = TextEditingController();
    final TextEditingController controllerSobreNome = TextEditingController();
    final TextEditingController controllerCpf = TextEditingController();
    final TextEditingController controllerDataNascimento = TextEditingController();
    final TextEditingController controllerTelefone = TextEditingController();
    final TextEditingController controllerEmail = TextEditingController();

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
            controller: controllerSobreNome,
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
