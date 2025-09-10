import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.iconData,
    required this.textInputType,
    this.isPassword = false,
    this.controller,
    this.validator,
  });

  final String labelText;
  final IconData iconData;
  final TextInputType textInputType;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      cursorColor: const Color(0xff0E7885),
      obscureText: widget.isPassword ? _obscure : false,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.iconData, color: const Color(0xff0E7885)),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.grey),
        border: buildOutlineInputBorder(Colors.grey),
        enabledBorder: buildOutlineInputBorder(Colors.grey),
        focusedBorder: buildOutlineInputBorder(const Color(0xff0E7885)),
        errorBorder: buildOutlineInputBorder(Colors.red),
        focusedErrorBorder: buildOutlineInputBorder(Colors.red),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              )
            : null,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: 1.2),
    );
  }
}
