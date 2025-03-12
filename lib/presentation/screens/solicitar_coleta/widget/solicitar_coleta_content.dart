import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/solicitar_coleta/widget/solicitar_coleta_body.dart';

import '../../../components/components_container_erro_desconhecido.dart';
import '../bloc/solicitar_coleta_bloc.dart';

class SolicitarColetaContent extends StatelessWidget {
  const SolicitarColetaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitar Coletora'),
        toolbarHeight: 80.0,
      ),
      body: BlocConsumer<SolicitarColetaBloc, SolicitarColetaState>(
        listener: _listener,
        builder: (context, state) {
          if (state is SolicitarColetaLoaded) {
            return const SolicitarColetaBody();
          }
          return const ComponentsContainerErroDesconhecido();
        },
      ),
    );
  }

  void _listener(BuildContext context, Object? state) {}
}
