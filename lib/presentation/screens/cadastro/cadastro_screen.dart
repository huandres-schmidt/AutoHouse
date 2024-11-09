import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/presentation/components/components_logo_auto_house.dart';

import '../../../core/constants/colors.dart';
import '../../components/components_mask_formatter.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  String? tipoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsContants.midnightDreams,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 32.0,
            right: 32.0,
            left: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ComponentsLogoAutoHouse(
                color: Colors.white,
                height: 150,
                width: 200,
              ),
              const Text(
                'Faça seu cadastro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                maxLength: 35,
                style: TextStyle(color: ColorsContants.backgroundColor),
                decoration: InputDecoration(
                  labelText: 'Nome da empresa',
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
                maxLength: 18,
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
              TextFormField(
                maxLength: 18,
                inputFormatters: [
                  ComponentsMaskFormatter().maskCnpjFormatter,
                ],
                style: TextStyle(color: ColorsContants.backgroundColor),
                decoration: InputDecoration(
                  labelText: 'CNPJ',
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
                maxLength: 35,
                style: TextStyle(color: ColorsContants.backgroundColor),
                decoration: InputDecoration(
                  labelText: 'Senha',
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
              Text(
                'Selecione o tipo da empresa',
                style: TextStyle(
                  color: ColorsContants.backgroundColor,
                ),
              ),
              RadioListTile<String>(
                title: Text(
                  'Oficina',
                  style: TextStyle(color: ColorsContants.backgroundColor),
                ),
                toggleable: true,
                activeColor: Colors.white,
                value: 'Oficina',
                groupValue: tipoSelecionado,
                onChanged: (value) {
                  setState(() {
                    tipoSelecionado = value.toString();
                  });
                },
              ),
              RadioListTile<String>(
                title: Text(
                  'Coletora',
                  style: TextStyle(color: ColorsContants.backgroundColor),
                ),
                toggleable: true,
                activeColor: Colors.white,
                value: 'Coletora',
                groupValue: tipoSelecionado,
                onChanged: (value) {
                  setState(() {
                    tipoSelecionado = value.toString();
                  });
                },
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.login),
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ColorsContants.backgroundColor),
                ),
                label: const Text(
                  'Cadastrar-se',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Já possui cadastro?',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
