import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/core/constants/enum/tipo_manutencao.dart';
import 'package:teste/presentation/components/components_mask_formatter.dart';

class AdicionarManutencaoScreen extends StatefulWidget {
  const AdicionarManutencaoScreen({
    super.key,
  });

  @override
  State<AdicionarManutencaoScreen> createState() =>
      _AdicionarManutencaoScreenState();
}

class _AdicionarManutencaoScreenState extends State<AdicionarManutencaoScreen> {
  TipoManutencao? _selectedTipoManutencao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Manutenção'),
        toolbarHeight: 80.0,
      ),
      body: Padding(
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
            TextFormField(
              inputFormatters: [ComponentsMaskFormatter().maskDataQuilometragem],
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Quilometragem',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.midnightDreams,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Nome do problema',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.midnightDreams,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Custo do reparo',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.midnightDreams,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Garantia',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.midnightDreams,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLines: null,
              decoration: InputDecoration(
                labelText: 'Relatório do reparo',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.midnightDreams,
                  ),
                ),
              ),
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
      ),
    );
  }
}
