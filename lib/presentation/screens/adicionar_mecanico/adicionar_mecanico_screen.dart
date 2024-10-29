import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';

class AdicionarMecanicoScreen extends StatelessWidget {
  const AdicionarMecanicoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Cadastrar Mecânico AutoHouse'),
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
                labelText: 'Sobrenome',
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
                labelText: 'CPF',
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
                labelText: 'Data admissão',
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
              icon: const Icon(Icons.person_add),
              label: const Text(
                'Adicionar Mecânico',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
