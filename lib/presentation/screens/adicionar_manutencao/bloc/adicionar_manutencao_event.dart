part of 'adicionar_manutencao_bloc.dart';

sealed class AdicionarManutencaoEvent extends Equatable {
  const AdicionarManutencaoEvent();
}

final class AdicionarManutencaoLoad extends AdicionarManutencaoEvent {
  const AdicionarManutencaoLoad();

  @override
  List<Object?> get props => [];
}