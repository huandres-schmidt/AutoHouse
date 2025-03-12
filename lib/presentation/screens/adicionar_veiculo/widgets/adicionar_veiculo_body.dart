import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/presentation/components/components_text_form_field.dart';

import '../../../../core/constants/enum/cores.dart';
import '../../../../core/constants/enum/marca.dart';

class AdicionarVeiculoBody extends StatefulWidget {
  const AdicionarVeiculoBody({
    super.key,
  });

  @override
  State<AdicionarVeiculoBody> createState() => _AdicionarVeiculoBodyState();
}

class _AdicionarVeiculoBodyState extends State<AdicionarVeiculoBody> {
  final TextEditingController _controllerModelo = TextEditingController();
  final TextEditingController _controllerPlaca = TextEditingController();
  final TextEditingController _controllerAnoFabricacao =
    TextEditingController();
  Cor? _selectedCor;
  Marca? _selectedMarca;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButtonFormField<Marca>(
            hint: const Text('Selecione a marca do veículo'),
            decoration: InputDecoration(
              labelText: 'Marca',
              labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
            ),
            value: _selectedMarca,
            onChanged: (Marca? value) {
              setState(() {
                _selectedMarca = value;
              });
            },
            items: Marca.values.map((marca) {
                return DropdownMenuItem<Marca>(
                  value: marca,
                  child: Row(
                    children: [
                      Image.asset(marca.assets, width: 20),
                      const SizedBox(width: 5),
                      Text(marca.nome),
                    ],
                  )
                );
              },
            ).toList(),
          ),
          DropdownButtonFormField<Cor>(
            hint: const Text('Selecione a cor do veículo'),
            decoration: InputDecoration(
              labelText: 'Cor',
              labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
            ),
            value: _selectedCor,
            onChanged: (Cor? value) {
              setState(() {
                _selectedCor = value;
              });
            },
            items: Cor.values.map((cor) {
              return DropdownMenuItem<Cor>(
                  value: cor,
                  child: Text(cor.cor),
              );
            },
            ).toList(),
          ),
          ComponentsTextFormField(
            maxLength: 34,
            labelText: 'Modelo',
            controller: _controllerModelo,
          ),
          ComponentsTextFormField(
            maxLength: 4,
            labelText: 'Ano de fabricação',
            controller: _controllerAnoFabricacao,
          ),
          ComponentsTextFormField(
            maxLength: 7,
            labelText: 'Placa',
            controller: _controllerPlaca,
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check_circle),
            label: const Text(
              'Adicionar novo veículo',
            ),
          ),
        ],
      ),
    );
  }
}
