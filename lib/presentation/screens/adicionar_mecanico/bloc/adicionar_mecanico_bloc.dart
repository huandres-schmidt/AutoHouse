import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'adicionar_mecanico_event.dart';

part 'adicionar_mecanico_state.dart';

class AdicionarMecanicoBloc
    extends Bloc<AdicionarMecanicoEvent, AdicionarMecanicoState> {
  AdicionarMecanicoBloc() : super(const AdicionarMecanicoInitialState()) {
    on<AdicionarMecanicoLoad>(_onAdicionarMecanicoLoad);
  }

  FutureOr<void> _onAdicionarMecanicoLoad(
    AdicionarMecanicoEvent event,
    Emitter<AdicionarMecanicoState> emit,
  ) async {
    try {
      emit(const AdicionarMecanicoLoading());

      emit(const AdicionarMecanicoLoaded());
    }catch (e) {
      emit(const AdicionarMecanicoFail());
    }
  }
}
