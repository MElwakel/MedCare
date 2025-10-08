import 'package:flutter/material.dart';

class CustomDropdownField<T> extends StatelessWidget {
  final T? value;
  final String hintText;
  final String label;
  final List<T> items;
  final void Function(T?) onChanged;

  const CustomDropdownField({
    super.key,
    required this.value,
    required this.hintText,
    required this.label,
    required this.items,
    required this.onChanged,
  });

  InputDecoration _dec(String label) => InputDecoration(
        hintText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey[100],
      );

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      initialValue: value,
      hint: Text(hintText),
      items: items
          .map((e) => DropdownMenuItem<T>(
                value: e,
                child: Text(e.toString()),
              ))
          .toList(),
      onChanged: onChanged,
      decoration: _dec(label),
    );
  }
}
