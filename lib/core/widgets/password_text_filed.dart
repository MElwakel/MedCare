import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    this.onSaved,
    required this.hintText,
  });

  final void Function(String?)? onSaved;
  final String hintText;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "this is required";
        }
        return null;
      },
      obscureText: isNotVisible,
      onSaved: widget.onSaved,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline,color: Color(0xff0E7885),),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isNotVisible = !isNotVisible;
            });
          },
          icon: Icon(
            isNotVisible
                ? Icons.visibility_off_rounded
                : Icons.visibility_rounded,
          ),
        ),
        hintText: widget.hintText,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.grey),
    );
  }
}
