import 'package:flutter/material.dart';
import 'package:teste/presentation/components/divider_custom.dart';

class HomeViewListaManutencao extends StatelessWidget {
  const HomeViewListaManutencao({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 15.0,
            bottom: 30.0,
          ),
          child: Text('Lista Manutenções'),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Teste',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Teste',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Teste',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        DividerCustom(),
        Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Teste',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Teste',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Teste',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        DividerCustom(),
      ],
    );
  }
}
