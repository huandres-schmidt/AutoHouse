part of 'solicitar_coleta_bloc.dart';

sealed class SolicitarColetaState extends Equatable {
  const SolicitarColetaState();
}

final class SolicitarColetaInitialState extends SolicitarColetaState {
  const SolicitarColetaInitialState();

  @override
  List<Object?> get props => [];
}

final class SolicitarColetaLoading extends SolicitarColetaState {
  const SolicitarColetaLoading();

  @override
  List<Object?> get props => [];
}

final class SolicitarColetaLoaded extends SolicitarColetaState {
  const SolicitarColetaLoaded();

  @override
  List<Object?> get props => [];
}

final class SolicitarColetaFail extends SolicitarColetaState {
  const SolicitarColetaFail();

  @override
  List<Object?> get props => [];
}


