import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/components/components_container_erro_desconhecido.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/bloc/adicionar_mecanico_bloc.dart';

import 'adicionar_mecanico_body.dart';

class AdicionarMecanicoContent extends StatelessWidget {
  const AdicionarMecanicoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0),
      body: BlocConsumer<AdicionarMecanicoBloc, AdicionarMecanicoState>(
        listener: _listener,
        builder: (context, state) {
          if (state is AdicionarMecanicoLoaded) {
            return const AdicionarMecanicoBody();
          }
          return const ComponentsContainerErroDesconhecido();
        },
      ),
    );
  }

  void _listener(BuildContext context, AdicionarMecanicoState state) {}
}
