part of 'adicionar_veiculo_bloc.dart';

sealed class AdicionarVeiculoState extends Equatable {
  const AdicionarVeiculoState();
}

final class AdicionarVeiculoInitialState extends AdicionarVeiculoState {
  const AdicionarVeiculoInitialState();

  @override
  List<Object?> get props => [];
}

final class AdicionarVeiculoLoading extends AdicionarVeiculoState {
  const AdicionarVeiculoLoading();

  @override
  List<Object?> get props => [];
}

final class AdicionarVeiculoLoaded extends AdicionarVeiculoState {
  const AdicionarVeiculoLoaded();

  @override
  List<Object?> get props => [];
}

final class AdicionarVeiculoFail extends AdicionarVeiculoState {
  const AdicionarVeiculoFail();

  @override
  List<Object?> get props => [];
}


