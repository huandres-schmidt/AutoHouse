import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/screens/solicitar_coleta/bloc/solicitar_coleta_bloc.dart';
import 'package:teste/presentation/screens/solicitar_coleta/widget/solicitar_coleta_content.dart';

class SolicitarColetaScreen extends StatelessWidget {
  const SolicitarColetaScreen({
    super.key,
    required this.solicitarColetaBloc,
  });

  final SolicitarColetaBloc solicitarColetaBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return solicitarColetaBloc
          ..add(
            const SolicitarColetaLoad(),
          );
      },
      child: const SolicitarColetaContent(),
    );
  }
}
