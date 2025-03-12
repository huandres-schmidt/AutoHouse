import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/presentation/components/components_mask_formatter.dart';
import 'package:teste/presentation/screens/menu/menu_screen.dart';

import '../../components/components_logo_auto_house.dart';
import '../home/bloc/home_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsContants.midnightDreams,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ComponentsLogoAutoHouse(
              color: Colors.white,
              height: 200,
              width: 300,
            ),
            const Text(
              'Bem vindo a AutoHouse',
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
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MenuScreen(homeBloc: homeBloc);
                    },
                  ),
                );
              },
              icon: const Icon(Icons.login),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(ColorsContants.backgroundColor),
              ),
              label: const Text(
                'Entrar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
