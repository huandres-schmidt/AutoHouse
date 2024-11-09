import 'package:get_it/get_it.dart';
import 'package:teste/presentation/screens/adicionar_cliente/bloc/adicionar_cliente_bloc.dart';

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

    return InjectorImpl._(getIt);
  }

  @override
  void dispose() {
    Future.wait([]);
  }
}
