import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/bloc/adicionar_mecanico_bloc.dart';
import 'package:teste/presentation/screens/adicionar_mecanico/widgets/adicionar_mecanico_content.dart';

class AdicionarMecanicoScreen extends StatelessWidget {
  const AdicionarMecanicoScreen({
    super.key,
    required this.adicionarMecanicoBloc,
  });

  final AdicionarMecanicoBloc adicionarMecanicoBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return adicionarMecanicoBloc
          ..add(
            const AdicionarMecanicoLoad(),
          );
      },
      child: const AdicionarMecanicoContent(),
    );
  }
}
