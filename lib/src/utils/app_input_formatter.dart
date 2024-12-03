import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppInputFormatter {
  static final maskFormatter = MaskTextInputFormatter(
  mask: '+998 (##) ###-##-##', 
  filter: { "#": RegExp(r'[0-9]') },
  type: MaskAutoCompletionType.lazy
);

  static final maskFormat = MaskTextInputFormatter(
  mask: '+998 (##) ###-##-##', 
  filter: { "#": RegExp(r'[0-9]') },
  type: MaskAutoCompletionType.eager
);
}