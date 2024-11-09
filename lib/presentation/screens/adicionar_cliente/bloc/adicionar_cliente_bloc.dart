import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'adicionar_cliente.state.dart';

part 'adicionar_cliente_event.dart';

class AdicionarClienteBloc
    extends Bloc<AdicionarClienteEvent, AdicionarClienteState> {
  AdicionarClienteBloc() : super(const AdicionarClienteInitial()) {
    on<AdicionarClienteLoad>(_onAdicionarClienteLoad);
  }

  FutureOr<void> _onAdicionarClienteLoad(
    AdicionarClienteLoad event,
    Emitter<AdicionarClienteState> emit,
  ) async {
    try {
      emit(const AdicionarClienteLoaded());
    } catch (e) {
      emit(
        AdicionarClienteFail(
          message:
              'Erro ao carregar tela de cadastro cliente.\n${e.toString()}',
        ),
      );
    }
  }
}
