import 'package:flutter/material.dart';
import 'package:teste/core/constants/colors.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_cliente.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_manutencao.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_mecanico.dart';
import 'package:teste/presentation/screens/home/widgets/home_view_lista_veiculo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorsContants.corquenaoseionome,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(52),
                bottomRight: Radius.circular(52),
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bem vindo a AutoHouse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
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
                      color: ColorsContants.corquenaoseionome,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icones/icone_add_manutencao.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.corquenaoseionome,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icones/icone_add_mecanico.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.corquenaoseionome,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {

                      },
                      icon: Image.asset(
                        'assets/icones/icone_add_veiculo.png',
                        width: 70,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorsContants.corquenaoseionome,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icones/icone_add_cliente.png',
                        width: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.665,
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
        ],
      ),
    );
  }
}
