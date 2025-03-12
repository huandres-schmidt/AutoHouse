import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/components/components_container_erro_desconhecido.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/bloc/adicionar_veiculo_bloc.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/widgets/adicionar_veiculo_body.dart';

class AdicionarVeiculoContent extends StatelessWidget {
  const AdicionarVeiculoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Veículo'),
        toolbarHeight: 80.0,
      ),
      body: BlocConsumer<AdicionarVeiculoBloc, AdicionarVeiculoState>(
        listener: _listener,
        builder: (context, state) {
          if(state is AdicionarVeiculoLoaded) {
            return const AdicionarVeiculoBody();
          }
          return const ComponentsContainerErroDesconhecido();
        },
      ),
    );
  }

  void _listener(BuildContext context, AdicionarVeiculoState state) {
  }
}
