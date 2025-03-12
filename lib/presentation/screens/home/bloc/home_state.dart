part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitialState extends HomeState {
  const HomeInitialState();

  @override
  List<Object?> get props => [];
}

final class HomeLoading extends HomeState {
  const HomeLoading();

  @override
  List<Object?> get props => [];
}

final class HomeLoaded extends HomeState {
  const HomeLoaded();

  @override
  List<Object?> get props => [];
}

final class HomeFail extends HomeState {
  const HomeFail();

  @override
  List<Object?> get props => [];
}


