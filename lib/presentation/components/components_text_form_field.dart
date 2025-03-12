import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../core/constants/colors.dart';

class ComponentsTextFormField extends StatelessWidget {
  const ComponentsTextFormField({
    super.key,
    this.maxLength,
    required this.labelText,
    required this.controller,
    this.maxLines,
    this.maskTextInputFormatter,
  });

  final int? maxLength;
  final String labelText;
  final TextEditingController controller;
  final int? maxLines;
  final MaskTextInputFormatter? maskTextInputFormatter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength ?? 35,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.chakraPetch(color: Colors.grey),
        suffixIcon: const Icon(
          Icons.check_circle,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsContants.midnightDreams,
          ),
        ),
      ),
      inputFormatters: [
        maskTextInputFormatter ?? MaskTextInputFormatter()
      ],
    );
  }
}
