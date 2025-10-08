import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';
import 'custom_dropdown_field.dart';

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

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Row(
      children: [
        Expanded(
          child: CustomDropdownField<String>(
            value: selectedGovernorate,
            hintText: s.governorate,
            label: s.governorate,
            items: governorates,
            onChanged: (value) => onChanged(value, null),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: CustomDropdownField<String>(
            value: (selectedArea != null &&
                    areas[selectedGovernorate]?.contains(selectedArea) == true)
                ? selectedArea
                : null,
            hintText: s.selectArea,
            label: s.area,
            items: (selectedGovernorate != null
                ? areas[selectedGovernorate] ?? []
                : []),
            onChanged: (value) => onChanged(selectedGovernorate, value),
          ),
        ),
      ],
    );
  }
}
