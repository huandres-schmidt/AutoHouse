import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/bloc/adicionar_manutencao_bloc.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/widgets/adicionar_manutencao_body.dart';
import 'package:teste/presentation/screens/adicionar_manutencao/widgets/adicionar_manutencao_content.dart';

class AdicionarManutencaoScreen extends StatelessWidget {
  const AdicionarManutencaoScreen({
    super.key,
    required this.adicionarManutencaoBloc,
  });

  final AdicionarManutencaoBloc adicionarManutencaoBloc;
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) {
    //     return adicionarManutencaoBloc
    //       ..add(
    //         const AdicionarManutencaoLoad(),
    //       );
    //   },
    //   child: const AdicionarManutencaoContent(),
    // );

    return const AdicionarManutencaoBody();
  }
}
