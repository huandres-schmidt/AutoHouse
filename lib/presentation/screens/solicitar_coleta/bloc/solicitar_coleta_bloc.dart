import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'solicitar_coleta_event.dart';
part 'solicitar_coleta_state.dart';

class SolicitarColetaBloc
    extends Bloc<SolicitarColetaEvent, SolicitarColetaState> {
  SolicitarColetaBloc() : super(const SolicitarColetaInitialState()) {
    on<SolicitarColetaLoad>(_onAdicionarMecanicoLoad);
  }

  FutureOr<void> _onAdicionarMecanicoLoad(
      SolicitarColetaEvent event,
      Emitter<SolicitarColetaState> emit,
      ) async {
    try {
      emit(const SolicitarColetaLoading());

      emit(const SolicitarColetaLoaded());
    }catch (e) {
      emit(const SolicitarColetaFail());
    }
  }
}
