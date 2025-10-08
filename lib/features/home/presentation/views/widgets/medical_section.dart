import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';
import 'location_fields.dart';

class MedicalSection extends StatelessWidget {
  final S s;
  final List<String> medicalServiceTypes;
  final Map<String, List<String>> medicalServices;
  final List<String> governorates;
  final Map<String, List<String>> areas;
  final String? selectedOperationType;
  final String? selectedService;
  final String? selectedGovernorate;
  final String? selectedArea;
  final TextEditingController searchController;
  final Function(String?, String?, String?, String?) onChanged;

  const MedicalSection({
    super.key,
    required this.s,
    required this.medicalServiceTypes,
    required this.medicalServices,
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
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey[100],
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          value: selectedOperationType,
          hint: Text(s.selectServiceType),
          items: medicalServiceTypes
              .map((type) => DropdownMenuItem(value: type, child: Text(type)))
              .toList(),
          onChanged: (value) => onChanged(value, null, selectedGovernorate, selectedArea),
          decoration: _dec(s.serviceType),
        ),
        const SizedBox(height: 12),
DropdownButtonFormField<String>(
  value: selectedService,
  hint: Text(s.selectService),
  items: (selectedOperationType != null
          ? (medicalServices[selectedOperationType] ?? [])
          : [])
      .map((e) => DropdownMenuItem<String>(
            value: e as String,
            child: Text(e),
          ))
      .toList(),
  onChanged: (value) =>
      onChanged(selectedOperationType, value, selectedGovernorate, selectedArea),
  decoration: _dec(s.service),
),

        const SizedBox(height: 15),
        LocationFields(
          governorates: governorates,
          areas: areas,
          selectedGovernorate: selectedGovernorate,
          selectedArea: selectedArea,
          onChanged: (gov, area) => onChanged(selectedOperationType, selectedService, gov, area),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: searchController,
          decoration: _dec(s.orTypeServiceName),
        ),
      ],
    );
  }
}
