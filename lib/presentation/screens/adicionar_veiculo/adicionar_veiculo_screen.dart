import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/bloc/adicionar_veiculo_bloc.dart';
import 'package:teste/presentation/screens/adicionar_veiculo/widgets/adicionar_veiculo_content.dart';

class AdicionarVeiculoScreen extends StatelessWidget {
  const AdicionarVeiculoScreen({
    super.key,
    required this.adicionarVeiculoBloc,
  });

  final AdicionarVeiculoBloc adicionarVeiculoBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return adicionarVeiculoBloc
          ..add(
            const AdicionarVeiculoLoad(),
          );
      },
      child: const AdicionarVeiculoContent(),
    );
  }
}
