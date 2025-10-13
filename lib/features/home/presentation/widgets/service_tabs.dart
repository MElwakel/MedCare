import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';

class ServiceTabs extends StatelessWidget {
  final List<String> serviceTypes;
  final String selectedServiceType;
  final Function(String) onSelected;

  const ServiceTabs({
    super.key,
    required this.serviceTypes,
    required this.selectedServiceType,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: serviceTypes.map((type) {
          bool selected = selectedServiceType == type;
          return Expanded(
            child: GestureDetector(
              onTap: () => onSelected(type),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: selected ? Colors.white : Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: selected ? Colors.blue : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Icon(
                      type == "Medical Service"
                          ? Icons.medical_services_outlined
                          : Icons.local_hospital_outlined,
                      color: selected ? Colors.blue : Colors.black54,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      type == "Medical Service"
                          ? s.medicalService
                          : s.surgicalOperation,
                      style: TextStyle(
                        fontWeight:
                            selected ? FontWeight.bold : FontWeight.normal,
                        color: selected ? Colors.blue : Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
