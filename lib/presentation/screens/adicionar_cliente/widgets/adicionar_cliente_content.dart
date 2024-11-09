import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/components/components_container_erro_desconhecido.dart';
import 'package:teste/presentation/screens/adicionar_cliente/bloc/adicionar_cliente_bloc.dart';

import 'adicionar_cliente_body.dart';

class AdicionarClienteContent extends StatelessWidget {
  AdicionarClienteContent({super.key});

  final TextEditingController controllerNome = TextEditingController();
  final TextEditingController controllerSobreNome = TextEditingController();
  final TextEditingController controllerCpf = TextEditingController();
  final TextEditingController controllerDataNascimento = TextEditingController();
  final TextEditingController controllerTelefone = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Cliente'),
        toolbarHeight: 80.0,
      ),
      body: BlocConsumer<AdicionarClienteBloc, AdicionarClienteState>(
        listener: _listener,
        builder: (context, state) {
          if (state is AdicionarClienteLoaded) {
            return AdicionarClienteBody(
              controllerNome: controllerNome,
              controllerSobrenome: controllerSobreNome,
              controllerCpf: controllerCpf,
              controllerDataNascimento: controllerDataNascimento,
              controllerTelefone: controllerTelefone,
              controllerEmail: controllerEmail,
            );
          }
          return const ComponentsContainerErroDesconhecido();
        },
      ),
    );
  }

  void _listener(BuildContext context, Object? state) {

  }
}
