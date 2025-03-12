part of 'adicionar_veiculo_bloc.dart';

sealed class AdicionarVeiculoEvent extends Equatable {
  const AdicionarVeiculoEvent();
}

final class AdicionarVeiculoLoad extends AdicionarVeiculoEvent {
  const AdicionarVeiculoLoad();

  @override
  List<Object?> get props => [];
}