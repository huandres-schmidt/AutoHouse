import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/presentation/components/components_mask_formatter.dart';

class AdicionarMecanicoScreen extends StatefulWidget {
  const AdicionarMecanicoScreen({
    super.key,
  });

  @override
  State<AdicionarMecanicoScreen> createState() =>
      _AdicionarMecanicoScreenState();
}

class _AdicionarMecanicoScreenState extends State<AdicionarMecanicoScreen> {

  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerSobrenome = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  String? tipoFuncaoSelecionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Mecânico'),
        toolbarHeight: 80.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _controllerNome,
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Nome',
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
              controller: _controllerSobrenome,
              maxLength: 35,
              decoration: InputDecoration(
                labelText: 'Sobrenome',
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
              controller: _controllerCpf,
              maxLength: 35,
              inputFormatters: [
                ComponentsMaskFormatter().maskCpfFormatter,
              ],
              decoration: InputDecoration(
                labelText: 'CPF',
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
              controller: _controllerEmail,
              maxLength: 18,
              inputFormatters: [
                ComponentsMaskFormatter().maskCnpjFormatter,
              ],
              style: TextStyle(color: ColorsContants.backgroundColor),
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                counterStyle: TextStyle(
                  color: ColorsContants.backgroundColor,
                ),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.backgroundColor,
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: _controllerTelefone,
              maxLength: 15,
              inputFormatters: [
                ComponentsMaskFormatter().maskTelefoneFormatter,
              ],
              style: TextStyle(color: ColorsContants.backgroundColor),
              decoration: InputDecoration(
                labelText: 'Telefone',
                labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
                counterStyle: TextStyle(
                  color: ColorsContants.backgroundColor,
                ),
                suffixIcon: const Icon(
                  Icons.check_circle,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsContants.backgroundColor,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Selecione a função do mecânico',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
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
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                ///Criar evento para cadastrar mecânico
              },
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
