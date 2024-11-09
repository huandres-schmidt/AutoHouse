part of 'adicionar_cliente_bloc.dart';

sealed class AdicionarClienteEvent extends Equatable {
  const AdicionarClienteEvent();
}

final class AdicionarClienteLoad extends AdicionarClienteEvent {
  const AdicionarClienteLoad();

  @override
  List<Object?> get props => [];
}