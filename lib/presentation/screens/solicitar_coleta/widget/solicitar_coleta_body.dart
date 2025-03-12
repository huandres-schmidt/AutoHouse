import 'package:flutter/material.dart';

class SolicitarColetaBody extends StatelessWidget {
  const SolicitarColetaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.recycling,
          color: Colors.green,
          size: 50,
        ),
      ),
    );
  }
}
