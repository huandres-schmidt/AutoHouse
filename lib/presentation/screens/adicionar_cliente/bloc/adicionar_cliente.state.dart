part of 'adicionar_cliente_bloc.dart';

sealed class AdicionarClienteState extends Equatable {
  const AdicionarClienteState();
}

final class AdicionarClienteInitial extends AdicionarClienteState {
  const AdicionarClienteInitial();

  @override
  List<Object?> get props => [];
}

final class AdicionarClienteLoading extends AdicionarClienteState {
  const AdicionarClienteLoading();

  @override
  List<Object?> get props => [];
}

final class AdicionarClienteLoaded extends AdicionarClienteState {
  const AdicionarClienteLoaded();

  @override
  List<Object?> get props => [];
}

final class AdicionarClienteFail extends AdicionarClienteState {
  const AdicionarClienteFail({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [message];
}
