import 'package:flutter/material.dart';
import 'package:teste/presentation/screens/adicionar_cliente/bloc/adicionar_cliente_bloc.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/adicionar_mecanico_screen.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/bloc/adicionar_mecanico_bloc.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/adicionar_veiculo_screen.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/bloc/adicionar_veiculo_bloc.dart';
import 'package:teste/presentation/screens/adicionar_cliente/adicionar_cliente_screen.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/adicionar_manutencao_screen.dart';
import 'package:teste/presentation/screens/clientes/clientes_screen.dart';
import 'package:teste/presentation/screens/home/bloc/home_bloc.dart';
import 'package:teste/presentation/screens/home/home_screen.dart';
import 'package:teste/presentation/screens/login/login_screen.dart';
import 'package:teste/presentation/screens/mecanicos/mecanicos_screen.dart';
import 'package:teste/presentation/screens/solicitar_coleta/bloc/solicitar_coleta_bloc.dart';
import 'package:teste/presentation/screens/solicitar_coleta/solicitar_coleta_screen.dart';
import 'package:teste/presentation/screens/veiculos/veiculos_screen.dart';

import '../injector.dart';
import '../presentation/components/animation/modal_page_route.dart';
import '../presentation/screens/adicionar_manutencao/bloc/adicionar_manutencao_bloc.dart';

enum NavigationFlow { simple, modalBottomUp }

enum AppRoutes {
  login('/login', NavigationFlow.simple),
  home('/', NavigationFlow.simple),
  adicionarCliente('/adicionar_cliente', NavigationFlow.modalBottomUp),
  adicionarManutencao('/adicionar_manutencao', NavigationFlow.simple),
  adicionarMecanico('/adicionar_mecanico', NavigationFlow.modalBottomUp),
  adicionarVeiculo('/adicionar_veiculo', NavigationFlow.modalBottomUp),
  solicitarColeta('/solicitar_coleta', NavigationFlow.modalBottomUp),
  clientes('/clientes', NavigationFlow.simple),
  mecanicos('/mecanicos', NavigationFlow.simple),
  veiculos('/veiculos', NavigationFlow.simple);

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
      AppRoutes.login => LoginScreen(
        homeBloc: injetor.getIt.get<HomeBloc>(),
      ),
      AppRoutes.home => HomeScreen(
        homeBloc: injetor.getIt.get<HomeBloc>(),
      ),
      AppRoutes.adicionarCliente => AdicionarClienteScreen(
          adicionarClienteBloc: injetor.getIt.get<AdicionarClienteBloc>(),
        ),
      AppRoutes.adicionarManutencao => AdicionarManutencaoScreen(
        adicionarManutencaoBloc: injetor.getIt.get<AdicionarManutencaoBloc>(),
      ),
      AppRoutes.adicionarMecanico => AdicionarMecanicoScreen(
        adicionarMecanicoBloc: injetor.getIt.get<AdicionarMecanicoBloc>(),
      ),
      AppRoutes.adicionarVeiculo => AdicionarVeiculoScreen(
        adicionarVeiculoBloc: injetor.getIt.get<AdicionarVeiculoBloc>()
      ),
      AppRoutes.solicitarColeta => SolicitarColetaScreen(
        solicitarColetaBloc: injetor.getIt.get<SolicitarColetaBloc>(),
      ),
      AppRoutes.clientes => const ClientesScreen(),
      AppRoutes.mecanicos => const MecanicosScreen(),
      AppRoutes.veiculos => const VeiculosScreen(),
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
