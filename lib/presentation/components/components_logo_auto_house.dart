import 'package:flutter/cupertino.dart';

class ComponentsLogoAutoHouse extends StatelessWidget {
  const ComponentsLogoAutoHouse({
    super.key,
    required this.color,
    required this.height,
    required this.width,
  });

  final Color color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icones/logo_auto_house.png',
      color: color,
      height: height,
      width: width
    );
  }
}
