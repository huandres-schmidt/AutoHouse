import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    on<HomeLoad>(_onAdicionarMecanicoLoad);
    on<HomeResetState>(_onHomeResetState);
  }

  FutureOr<void> _onAdicionarMecanicoLoad(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(const HomeLoading());
      emit(const HomeLoaded());
    } catch (e) {
      emit(const HomeFail());
    }
  }

  FutureOr<void> _onHomeResetState(
    HomeResetState event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeInitialState());
  }
}
