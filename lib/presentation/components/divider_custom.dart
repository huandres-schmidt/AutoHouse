import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2.0,
      endIndent: 12.0,
      indent: 12.0,
      color: ColorsContants.corDivider,
    );
  }
}
