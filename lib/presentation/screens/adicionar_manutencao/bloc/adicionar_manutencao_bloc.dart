import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'adicionar_manutencao_event.dart';
part 'adicionar_manutencao_state.dart';

class AdicionarManutencaoBloc
    extends Bloc<AdicionarManutencaoEvent, AdicionarManutencaoState> {
  AdicionarManutencaoBloc() : super(const AdicionarManutencaoInitialState()) {
    on<AdicionarManutencaoLoad>(_onAdicionarManutencaoLoad);
  }

  FutureOr<void> _onAdicionarManutencaoLoad(
    AdicionarManutencaoLoad event,
    Emitter<AdicionarManutencaoState> emit,
  ) async {
    try {
      emit(const AdicionarManutencaoLoading());
      emit(const AdicionarManutencaoLoaded());
    } catch (e) {
      emit(
        AdicionarManutencaoFail(
          message:
              'Erro ao tentar carregar tela de cadastro de manutenção.\n${e.toString()}',
        ),
      );
    }
  }
}
