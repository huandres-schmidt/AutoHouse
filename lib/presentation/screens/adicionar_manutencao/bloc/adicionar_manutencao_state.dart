part of 'adicionar_manutencao_bloc.dart';

sealed class AdicionarManutencaoState extends Equatable {
  const AdicionarManutencaoState();
}

final class AdicionarManutencaoInitialState extends AdicionarManutencaoState {
  const AdicionarManutencaoInitialState();

  @override
  List<Object?> get props => [];
}

final class AdicionarManutencaoLoading extends AdicionarManutencaoState {
  const AdicionarManutencaoLoading();

  @override
  List<Object?> get props => [];
}

final class AdicionarManutencaoLoaded extends AdicionarManutencaoState {
  const AdicionarManutencaoLoaded();

  @override
  List<Object?> get props => [];
}

final class AdicionarManutencaoFail extends AdicionarManutencaoState {
  const AdicionarManutencaoFail({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [message];
}
