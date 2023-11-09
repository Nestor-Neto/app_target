import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormFieldWidget extends StatelessWidget {
  final bool obscureText;
  final Icon? prefixIcon;
  final int limitChar;
  final FocusNode? focusNode;
  final TextEditingController? textEditingController;
  final FormFieldValidator<String>? formFieldValidator;
  final EdgeInsetsGeometry? padding;

  const CustomFormFieldWidget({
    super.key,
    required this.obscureText,
    this.prefixIcon,
    this.formFieldValidator,
    this.textEditingController,
    this.focusNode,
    this.padding,
    required this.limitChar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(limitChar),
        ],
        onChanged: (value) {
          textEditingController?.text = value.trim();
        },
        controller: textEditingController,
        focusNode: focusNode,
        validator: formFieldValidator,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          isDense: true,
          prefixIcon: prefixIcon,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
