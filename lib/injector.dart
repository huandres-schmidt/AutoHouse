import 'package:get_it/get_it.dart';
import 'package:teste/presentation/screens/adicionar_cliente/bloc/adicionar_cliente_bloc.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/bloc/adicionar_manutencao_bloc.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/bloc/adicionar_mecanico_bloc.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/bloc/adicionar_veiculo_bloc.dart';
import 'package:teste/presentation/screens/home/bloc/home_bloc.dart';
import 'package:teste/presentation/screens/solicitar_coleta/bloc/solicitar_coleta_bloc.dart';

final getIt = GetIt.instance;

abstract class Injector {
  Injector(this.getIt);

  late final GetIt getIt;

  void dispose();
}

final class InjectorImpl extends Injector {
  InjectorImpl._(super.getIt);

  static Future<Injector> initializeDependencies() async {
    final getIt = GetIt.instance;

    /// BLOC -------------------------------------------------------------------
    getIt.registerFactory<AdicionarClienteBloc>(
      () => AdicionarClienteBloc(),
    );

    getIt.registerFactory(
      () => AdicionarManutencaoBloc(),
    );

    getIt.registerFactory<AdicionarMecanicoBloc>(
      () => AdicionarMecanicoBloc(),
    );

    getIt.registerFactory<AdicionarVeiculoBloc>(
          () => AdicionarVeiculoBloc(),
    );

    getIt.registerFactory<SolicitarColetaBloc>(
      () => SolicitarColetaBloc(),
    );

    getIt.registerFactory<HomeBloc>(
      () => HomeBloc(),
    );


    return InjectorImpl._(getIt);
  }

  @override
  void dispose() {
    Future.wait([]);
  }
}
