import 'package:flutter/material.dart';
import 'package:teste/presentation/screens/home/bloc/home_bloc.dart';
import 'package:teste/presentation/screens/home/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => widget.homeBloc..add(const HomeLoad()),
    //   child: const HomeContent(),
    // );
    return const HomeBody();
  }
}
