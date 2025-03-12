part of 'adicionar_mecanico_bloc.dart';

sealed class AdicionarMecanicoEvent extends Equatable {
  const AdicionarMecanicoEvent();
}

final class AdicionarMecanicoLoad extends AdicionarMecanicoEvent {
  const AdicionarMecanicoLoad();

  @override
  List<Object?> get props => [];
}