part of 'solicitar_coleta_bloc.dart';

sealed class SolicitarColetaEvent extends Equatable {
  const SolicitarColetaEvent();
}

final class SolicitarColetaLoad extends SolicitarColetaEvent {
  const SolicitarColetaLoad();

  @override
  List<Object?> get props => [];
}