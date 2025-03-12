import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/presentation/components/components_container_erro_desconhecido.dart';
import 'package:teste/presentation/screens/home/bloc/home_bloc.dart';

import 'home_body.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: _listener,
        builder: (context, state) {
          if (state is HomeLoaded) {
            return const HomeBody();
          }
          return const ComponentsContainerErroDesconhecido();
        },
    );
  }

  void _listener(BuildContext context, HomeState state) {}
}
