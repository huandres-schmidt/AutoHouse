import 'package:flutter/material.dart';
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
  String? tipoFuncaoSelecionada;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  ComponentsTextFormField(
                    maxLength: 35,
                    labelText: 'Nome',
                    controller: _controllerNome,
                  ),
                  ComponentsTextFormField(
                    maxLength: 35,
                    labelText: 'Sobrenome',
                    controller: _controllerSobrenome,
                  ),
                  const Text('Selecione a especialização'),
                  RadioListTile<String>(
                    title: Text(
                      'Auxiliar',
                      style: TextStyle(color: ColorsContants.midnightDreams),
                    ),
                    toggleable: true,
                    activeColor: ColorsContants.midnightDreams,
                    value: 'Auxiliar',
                    groupValue: tipoFuncaoSelecionada,
                    onChanged: (value) {
                      setState(() {
                        tipoFuncaoSelecionada = value.toString();
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'Mecânico',
                      style: TextStyle(color: ColorsContants.midnightDreams),
                    ),
                    toggleable: true,
                    activeColor: ColorsContants.midnightDreams,
                    value: 'Mecânico',
                    groupValue: tipoFuncaoSelecionada,
                    onChanged: (value) {
                      setState(() {
                        tipoFuncaoSelecionada = value.toString();
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'Mecânico Chefe',
                      style: TextStyle(color: ColorsContants.midnightDreams),
                    ),
                    toggleable: true,
                    activeColor: ColorsContants.midnightDreams,
                    value: 'Mecânico Chefe',
                    groupValue: tipoFuncaoSelecionada,
                    onChanged: (value) {
                      setState(() {
                        tipoFuncaoSelecionada = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Adicionar Mecânico'),
            ),
          ),
        ],
      ),
    );
  }
}