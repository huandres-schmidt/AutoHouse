import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'adicionar_veiculo_state.dart';
part 'adicionar_veiculo_event.dart';

class AdicionarVeiculoBloc
    extends Bloc<AdicionarVeiculoEvent, AdicionarVeiculoState> {
  AdicionarVeiculoBloc() : super(const AdicionarVeiculoInitialState()) {
    on<AdicionarVeiculoLoad>(_onAdicionarMecanicoLoad);
  }

  FutureOr<void> _onAdicionarMecanicoLoad(
      AdicionarVeiculoEvent event,
      Emitter<AdicionarVeiculoState> emit,
      ) async {
    try {
      emit(const AdicionarVeiculoLoading());

      emit(const AdicionarVeiculoLoaded());
    }catch (e) {
      emit(const AdicionarVeiculoFail());
    }
  }
}
