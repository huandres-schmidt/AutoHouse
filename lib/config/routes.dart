import 'package:flutter/material.dart';
import 'package:teste/presentation/screens/adicionar_cliente/bloc/adicionar_cliente_bloc.dart';
import 'package:teste/presentation/screens/cadastro/cadastro_screen.dart';
import 'package:teste/presentation/screens/adicionar_cliente/adicionar_cliente_screen.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/adicionar_manutencao_screen.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/adicionar_mecanico_screen.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/adicionar_veiculo_screen.dart';
import 'package:teste/presentation/screens/home/home_screen.dart';
import 'package:teste/presentation/screens/login/login_screen.dart';

import '../injector.dart';
import '../presentation/components/animation/modal_page_route.dart';

enum NavigationFlow { simple, modalBottomUp }

enum AppRoutes {
  login('/login', NavigationFlow.simple),
  cadastro('/cadastro', NavigationFlow.modalBottomUp),
  home('/', NavigationFlow.simple),
  adicionarCliente('/adicionar_cliente', NavigationFlow.simple),
  adicionarManutencao('/adicionar_manutencao', NavigationFlow.simple),
  adicionarMecanico('/adicionar_mecanico', NavigationFlow.simple),
  adicionarVeiculo('/adicionar_veiculo', NavigationFlow.simple);

  final String route;
  final NavigationFlow flow;

  const AppRoutes(this.route, this.flow);

  static AppRoutes fromName(String? screenName) {
    return AppRoutes.values.firstWhere(
      (e) => e.route == screenName,
      orElse: () => home,
    );
  }
}

class Routes {
  static PageRoute router(RouteSettings settings, Injector injetor) {
    final appRoute = AppRoutes.fromName(settings.name);

    final Widget screen = switch (appRoute) {
      AppRoutes.login => const LoginScreen(),
      AppRoutes.cadastro => const CadastroScreen(),
      AppRoutes.home => const HomeScreen(),
      AppRoutes.adicionarCliente => AdicionarClienteScreen(
          adicionarClienteBloc: injetor.getIt.get<AdicionarClienteBloc>(),
        ),
      AppRoutes.adicionarManutencao => const AdicionarManutencaoScreen(),
      AppRoutes.adicionarMecanico => const AdicionarMecanicoScreen(),
      AppRoutes.adicionarVeiculo => const AdicionarVeiculoScreen()
    };

    return switch (appRoute.flow) {
      NavigationFlow.modalBottomUp => ModalPageRoute(
          builder: (context) => screen,
          modalSettings: settings,
        ),
      NavigationFlow.simple => MaterialPageRoute(
          builder: (context) => screen,
          settings: settings,
        )
    };
  }
}
