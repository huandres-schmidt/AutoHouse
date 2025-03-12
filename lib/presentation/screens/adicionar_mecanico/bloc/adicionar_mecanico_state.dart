part of 'adicionar_mecanico_bloc.dart';

sealed class AdicionarMecanicoState extends Equatable {
  const AdicionarMecanicoState();
}

final class AdicionarMecanicoInitialState extends AdicionarMecanicoState {
  const AdicionarMecanicoInitialState();

  @override
  List<Object?> get props => [];
}

final class AdicionarMecanicoLoading extends AdicionarMecanicoState {
  const AdicionarMecanicoLoading();

  @override
  List<Object?> get props => [];
}

final class AdicionarMecanicoLoaded extends AdicionarMecanicoState {
  const AdicionarMecanicoLoaded();

  @override
  List<Object?> get props => [];
}

final class AdicionarMecanicoFail extends AdicionarMecanicoState {
  const AdicionarMecanicoFail();

  @override
  List<Object?> get props => [];
}


