part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

final class HomeLoad extends HomeEvent {
  const HomeLoad();

  @override
  List<Object?> get props => [];
}

final class HomeResetState extends HomeEvent {
  const HomeResetState();

  @override
  List<Object?> get props => [];
}