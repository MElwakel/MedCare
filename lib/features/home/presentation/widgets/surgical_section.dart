import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';
import 'location_fields.dart';
import 'custom_dropdown_field.dart';

class SurgicalSection extends StatelessWidget {
  final S s;
  final List<String> operationTypes;
  final Map<String, List<String>> surgicalOperations;
  final List<String> governorates;
  final Map<String, List<String>> areas;
  final String? selectedOperationType;
  final String? selectedService;
  final String? selectedGovernorate;
  final String? selectedArea;
  final TextEditingController searchController;
  final Function(String?, String?, String?, String?) onChanged;

  const SurgicalSection({
    super.key,
    required this.s,
    required this.operationTypes,
    required this.surgicalOperations,
    required this.governorates,
    required this.areas,
    required this.selectedOperationType,
    required this.selectedService,
    required this.selectedGovernorate,
    required this.selectedArea,
    required this.searchController,
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
    return Column(
      children: [
        CustomDropdownField<String>(
          value: selectedOperationType,
          hintText: s.selectOperationType,
          label: s.operationType,
          items: operationTypes,
          onChanged: (value) =>
              onChanged(value, null, selectedGovernorate, selectedArea),
        ),
        const SizedBox(height: 12),
        CustomDropdownField<String>(
          value: selectedService,
          hintText: s.selectOperation,
          label: s.operation,
          items: (selectedOperationType != null
              ? (surgicalOperations[selectedOperationType] ?? [])
              : []),
          onChanged: (value) =>
              onChanged(selectedOperationType, value, selectedGovernorate, selectedArea),
        ),
        const SizedBox(height: 12),
        LocationFields(
          governorates: governorates,
          areas: areas,
          selectedGovernorate: selectedGovernorate,
          selectedArea: selectedArea,
          onChanged: (gov, area) =>
              onChanged(selectedOperationType, selectedService, gov, area),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: searchController,
          decoration: _dec(s.orTypeOperationName),
        ),
      ],
    );
  }
}
