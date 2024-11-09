import 'package:flutter/material.dart';
import 'package:teste/config/routes.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/adicionar_manutencao_screen.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/adicionar_mecanico_screen.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/adicionar_veiculo_screen.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_cliente.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_manutencao.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_mecanico.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_veiculo.dart';

import '../adicionar_cliente/adicionar_cliente_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorsContants.midnightDreams,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: IconButton(
                          onPressed: () {
                            ///Adicionar funcionalidade de logout e altera senha
                          },
                          icon: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nome Empresa',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              '###.###.###/####-##',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.midnightDreams,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AdicionarManutencaoScreen(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icones/icone_adicionar_manutencao.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.midnightDreams,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AdicionarVeiculoScreen(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icones/icone_adicionar_veiculos.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.midnightDreams,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.adicionarCliente.route,
                        );
                      },
                      icon: Image.asset(
                        'assets/icones/icone_adicionar_cliente.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.midnightDreams,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AdicionarVeiculoScreen(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icones/icone_empresa_coletora.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.midnightDreams,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AdicionarMecanicoScreen(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icones/icone_adicionar_mecanico.png',
                        width: 75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(52),
                    topRight: Radius.circular(52),
                  ),
                ),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HomeViewListaManutencao(),
                    HomeViewListaMecanico(),
                    HomeViewListaVeiculo(),
                    HomeViewListaCliente(),
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
