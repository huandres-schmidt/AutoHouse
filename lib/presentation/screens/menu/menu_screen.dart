import 'package:flutter/material.dart';
import 'package:teste/core/constants/colors.dart';

import 'package:teste/presentation/screens/clientes/clientes_screen.dart';
import 'package:teste/presentation/screens/home/bloc/home_bloc.dart';
import 'package:teste/presentation/screens/home/home_screen.dart';
import 'package:teste/presentation/screens/mecanicos/mecanicos_screen.dart';
import 'package:teste/presentation/screens/veiculos/veiculos_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late final HomeBloc _homeBloc;

  int index = 0;

  @override
  void initState() {
    _homeBloc = widget.homeBloc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: widgetPages.elementAt(index),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          currentIndex: index,
          items: itens,
          selectedIconTheme: IconThemeData(
            color: ColorsContants.midnightDreams,
          ),
          selectedItemColor: ColorsContants.midnightDreams,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
    );
  }

  List<Widget> get widgetPages => [
        HomeScreen(homeBloc: _homeBloc),
        const MecanicosScreen(),
        const VeiculosScreen(),
        const ClientesScreen(),
        const Text('Sincronizar'),
      ];

  List<BottomNavigationBarItem> get itens => [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              'assets/icones/icone_mecanico.png',
            ),
            size: 30,
          ),
          label: 'Mecânicos',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.directions_car_sharp,
            size: 30,
          ),
          label: 'Veículos',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 30,
          ),
          label: 'Clientes',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.refresh,
            size: 30,
          ),
          label: 'Sincronizar',
        ),
      ];

  void onShowDialogSincronizacao() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Sincronizando...'),
        );
      },
    );
  }
}
