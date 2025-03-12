import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/presentation/components/components_text_form_field.dart';

import '../../../../core/constants/enum/tipo_manutencao.dart';
import '../../../components/components_mask_formatter.dart';

class AdicionarManutencaoBody extends StatefulWidget {
  const AdicionarManutencaoBody({super.key});

  @override
  State<AdicionarManutencaoBody> createState() =>
      _AdicionarManutencaoBodyState();
}

class _AdicionarManutencaoBodyState extends State<AdicionarManutencaoBody> {
  final TextEditingController controllerQuilometragem = TextEditingController();
  final TextEditingController controllerNomeProblema = TextEditingController();
  final TextEditingController controllerCustoReparo = TextEditingController();
  final TextEditingController controllerGarantia = TextEditingController();
  final TextEditingController controllerRelatorio = TextEditingController();
  TipoManutencao? _selectedTipoManutencao;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButtonFormField<TipoManutencao>(
            hint: const Text('Selecione o tipo da manutenção'),
            decoration: InputDecoration(
              labelText: 'Tipo manutenção',
              labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
            ),
            value: _selectedTipoManutencao,
            onChanged: (TipoManutencao? value) {
              setState(() {
                _selectedTipoManutencao = value;
              });
            },
            items: TipoManutencao.values.map(
              (tipoManutencao) {
                return DropdownMenuItem<TipoManutencao>(
                  value: tipoManutencao,
                  child: Text(
                    tipoManutencao.tipo,
                  ),
                );
              },
            ).toList(),
          ),
          ComponentsTextFormField(
            maxLength: 6,
            labelText: 'Quilometragem',
            controller: controllerQuilometragem,
            maskTextInputFormatter:
                ComponentsMaskFormatter().maskDataQuilometragem,
          ),
          ComponentsTextFormField(
            maxLength: 35,
            labelText: 'Nome do problema',
            controller: controllerNomeProblema,
          ),
          ComponentsTextFormField(
            maxLength: 9,
            labelText: 'Custo reparo',
            controller: controllerCustoReparo,
          ),
          ComponentsTextFormField(
            maxLength: 10,
            labelText: 'Garantia',
            controller: controllerGarantia,
          ),
          ComponentsTextFormField(
            labelText: 'Relatório',
            controller: controllerRelatorio,
            maxLines: null,
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check_circle),
            label: const Text(
              'Adicionar manutenção',
            ),
          ),
        ],
      ),
    );
  }
}
