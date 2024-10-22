import 'package:flutter/material.dart';

class AdicionarVeiculoScreen extends StatelessWidget {
  const AdicionarVeiculoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          TextFormField(),
          TextFormField(),
        ],
      ),
    );
  }
}
