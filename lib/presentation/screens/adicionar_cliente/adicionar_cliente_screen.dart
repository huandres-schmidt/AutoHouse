import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/adicionar_cliente/bloc/adicionar_cliente_bloc.dart';
import 'package:teste/presentation/screens/adicionar_cliente/widgets/adicionar_cliente_content.dart';

class AdicionarClienteScreen extends StatelessWidget {
  const AdicionarClienteScreen({
    super.key,
    required this.adicionarClienteBloc,
  });

  final AdicionarClienteBloc adicionarClienteBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return adicionarClienteBloc
          ..add(
            const AdicionarClienteLoad(),
          );
      },
      child: AdicionarClienteContent(),
    );
  }
}