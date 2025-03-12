import 'package:flutter/material.dart';
import 'package:teste/config/routes.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/presentation/screens/home/widgets/home_item_grid_view.dart';

import '../../../../core/constants/assets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            color: ColorsContants.midnightDreams,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Transform.scale(
                scale: 1.4,
                child: Image.asset(
                  Assets.logoCorBranca,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 100.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  children: [
                    HomeItemGridView(
                      icon: Icons.directions_car_filled_outlined,
                      label: 'Adicionar Veículo',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.adicionarVeiculo.route,
                        );
                      },
                    ),
                    HomeItemGridView(
                      imageIcon: Assets.iconeMecanico,
                      label: 'Adicionar Mecânico',
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.adicionarMecanico.route,
                        );
                      },
                    ),
                    HomeItemGridView(
                      icon: Icons.person_add_outlined,
                      label: 'Adicionar Cliente',
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.adicionarCliente.route,
                        );
                      },
                    ),
                    HomeItemGridView(
                      imageIcon: Assets.iconeSolicitarColete,
                      label: 'Solicitar Coleta',
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.solicitarColeta.route,
                        );
                      },
                    ),
                    HomeItemGridView(
                      imageIcon: Assets.iconeAdicionarManutencao,
                      label: 'Adicionar Manutenção',
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.adicionarManutencao.route,
                        );
                      },
                    ),
                    HomeItemGridView(
                      icon: Icons.person_outline_rounded,
                      label: 'Perfil',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
