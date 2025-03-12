import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class HomeItemGridView extends StatelessWidget {
  const HomeItemGridView({
    super.key,
    this.icon,
    required this.label,
    required this.onTap,
    this.imageIcon,
  });

  final String? imageIcon;
  final String label;
  final IconData? icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(
            color: ColorsContants.corDivider,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: imageIcon != null,
                child: Image.asset(
                  imageIcon ?? '',
                  width: 42,
                  height: 42,
                  color: ColorsContants.midnightDreams,
                ),
              ),
              Visibility(
                visible: icon != null,
                child: Icon(
                  icon,
                  size: 42,
                  color: ColorsContants.midnightDreams,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                label,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
