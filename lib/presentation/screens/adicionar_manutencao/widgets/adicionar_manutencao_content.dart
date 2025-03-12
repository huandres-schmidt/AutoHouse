import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/bloc/adicionar_manutencao_bloc.dart';

import '../../../components/components_container_erro_desconhecido.dart';
import 'adicionar_manutencao_body.dart';

class AdicionarManutencaoContent extends StatelessWidget {
  const AdicionarManutencaoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Manutenção'),
        toolbarHeight: 80.0,
      ),
      body: BlocConsumer<AdicionarManutencaoBloc, AdicionarManutencaoState>(
        listener: _listener,
        builder: (context, state) {
          if(state is AdicionarManutencaoLoaded) {
            return const AdicionarManutencaoBody();
          }
          return const ComponentsContainerErroDesconhecido();
        },
      ),
    );
  }

  void _listener(BuildContext context, state) {
  }
}
