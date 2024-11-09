import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ComponentsMaskFormatter{
  var maskCnpjFormatter = MaskTextInputFormatter(
    mask: '##.###.###/####-##',
    filter: { "#": RegExp(r'[0-9]') },
  );

  var maskTelefoneFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####'
  );

  var maskCpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##'
  );

  var maskDataDiaMesAno = MaskTextInputFormatter(
    mask: '##/##/####'
  );

  var maskDataQuilometragem = MaskTextInputFormatter(
    mask: '###.###'
  );
}