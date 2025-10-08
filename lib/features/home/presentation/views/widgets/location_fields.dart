import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';

class LocationFields extends StatelessWidget {
  final List<String> governorates;
  final Map<String, List<String>> areas;
  final String? selectedGovernorate;
  final String? selectedArea;
  final Function(String?, String?) onChanged;

  const LocationFields({
    super.key,
    required this.governorates,
    required this.areas,
    required this.selectedGovernorate,
    required this.selectedArea,
    required this.onChanged,
  });

  InputDecoration _dec(String label) => InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey[100],
      );

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<String>(
            value: selectedGovernorate,
            hint: Text(s.governorate),
            items: governorates
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) => onChanged(value, null),
            decoration: _dec(s.governorate),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
child: DropdownButtonFormField<String>(
  value: (selectedArea != null &&
          areas[selectedGovernorate]?.contains(selectedArea) == true)
      ? selectedArea
      : null,
  hint: Text(s.selectArea),
  items: (selectedGovernorate != null
          ? areas[selectedGovernorate] ?? []
          : [])
      .map((e) => DropdownMenuItem<String>(
            value: e as String,
            child: Text(e),
          ))
      .toList(),
  onChanged: (value) => onChanged(selectedGovernorate, value),
  decoration: _dec(s.area),
),

        ),
      ],
    );
  }
}
