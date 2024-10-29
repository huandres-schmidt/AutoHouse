import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';

class AdicionarVeiculoScreen extends StatelessWidget {
  const AdicionarVeiculoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String dropDowMenu = '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Veículo AutoHouse'),
        toolbarHeight: 80.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Nome',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.corquenaoseionome,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Modelo',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.corquenaoseionome,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Placa',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.corquenaoseionome,
                  ),
                ),
              ),
            ),
            TextFormField(
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Ano de fabricação',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.corquenaoseionome,
                  ),
                ),
              ),
            ),

            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.directions_car_sharp),
              label: const Text(
                'Adicionar Veículo',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
