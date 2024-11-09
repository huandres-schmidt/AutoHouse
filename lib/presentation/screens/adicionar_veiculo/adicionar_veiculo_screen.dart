import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/core/constants/enum/cilindrada_motor.dart';

import '../../../core/constants/enum/cores.dart';
import '../../../core/constants/enum/marca.dart';

class AdicionarVeiculoScreen extends StatefulWidget {
  const AdicionarVeiculoScreen({
    super.key,
  });

  @override
  State<AdicionarVeiculoScreen> createState() => _AdicionarVeiculoScreenState();
}

class _AdicionarVeiculoScreenState extends State<AdicionarVeiculoScreen> {
  CilindradaMotor? _selectedCilindrada;
  Cor? _selectedCor;
  Marca? _selectedMarca;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Veículo'),
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
                labelText: 'Modelo',
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
                labelText: 'Placa',
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
                labelText: 'Ano de fabricação',
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
            DropdownButtonFormField<Marca>(
              hint: const Text('Selecione a marca'),
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
              items: Marca.values.map(
                    (Marca marcas) {
                  return DropdownMenuItem<Marca>(
                    value: marcas,
                    child: Row(
                      children: [
                        Image.asset(marcas.assets, width: 30,height: 30,),
                        const SizedBox(width: 10),
                        Text(marcas.nome),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
            DropdownButtonFormField<CilindradaMotor>(
              hint: const Text('Selecione a cilindrada'),
              decoration: InputDecoration(
                labelText: 'Cilindrada',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
              ),
              value: _selectedCilindrada,
              onChanged: (CilindradaMotor? value) {
                setState(() {
                  _selectedCilindrada = value;
                });
              },
              items: CilindradaMotor.values.map(
                (CilindradaMotor cilindrada) {
                  return DropdownMenuItem<CilindradaMotor>(
                      value: cilindrada, child: Text(cilindrada.cilindrada));
                },
              ).toList(),
            ),
            DropdownButtonFormField<Cor>(
              hint: const Text('Selecione a cor'),
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
              items: Cor.values.map(
                (Cor cores) {
                  return DropdownMenuItem<Cor>(
                    value: cores,
                    child: Text(cores.cor),
                  );
                },
              ).toList(),
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
