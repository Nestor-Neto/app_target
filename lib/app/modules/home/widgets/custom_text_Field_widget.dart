import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final Icon? prefixIcon;
  final TextEditingController? textEditingController;
  final FormFieldValidator<String>? formFieldValidator;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onCompleted;

  const CustomTextFieldWidget(
      {super.key,
      required this.obscureText,
      this.prefixIcon,
      this.formFieldValidator,
      this.textEditingController,
      this.focusNode,
      this.padding,
      this.onCompleted})
      : assert(obscureText == true ? prefixIcon == null : true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: TextField(
        onEditingComplete: onCompleted,
        controller: textEditingController,
        focusNode: focusNode,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
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
