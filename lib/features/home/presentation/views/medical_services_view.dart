import 'package:flutter/material.dart';
import 'package:medcare/features/home/presentation/views/data/services_data.dart';
import 'package:medcare/generated/l10n.dart';
import '../widgets/service_tabs.dart';
import '../widgets/medical_section.dart';
import '../widgets/surgical_section.dart';

class MedicalServicesView extends StatefulWidget {
  const MedicalServicesView({super.key});

  @override
  State<MedicalServicesView> createState() => _MedicalServicesViewState();
}

class _MedicalServicesViewState extends State<MedicalServicesView> {
  String selectedServiceType = "Medical Service";
  String? selectedService;
  String? selectedGovernorate;
  String? selectedArea;
  String? selectedOperationType;

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Med",
                style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "Care",
                style: TextStyle(
                    color: Color.fromARGB(255, 31, 2, 102),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              selectedServiceType == "Medical Service"
                  ? s.chooseMedicalService
                  : s.chooseSurgicalOperation,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              selectedServiceType == "Medical Service"
                  ? s.medicalServiceDesc
                  : s.surgicalOperationDesc,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            
            ServiceTabs(
              serviceTypes: serviceTypes,
              selectedServiceType: selectedServiceType,
              onSelected: (type) {
                setState(() {
                  selectedServiceType = type;
                  selectedService = null;
                  selectedOperationType = null;
                });
              },
            ),

            const SizedBox(height: 20),

            
            if (selectedServiceType == "Medical Service")
              MedicalSection(
                s: s,
                medicalServiceTypes: medicalServiceTypes,
                medicalServices: medicalServices,
                governorates: governorates,
                areas: areas,
                selectedOperationType: selectedOperationType,
                selectedService: selectedService,
                selectedGovernorate: selectedGovernorate,
                selectedArea: selectedArea,
                searchController: searchController,
                onChanged: _onSelectionChanged,
              )
            else
              SurgicalSection(
                s: s,
                operationTypes: operationTypes,
                surgicalOperations: surgicalOperations,
                governorates: governorates,
                areas: areas,
                selectedOperationType: selectedOperationType,
                selectedService: selectedService,
                selectedGovernorate: selectedGovernorate,
                selectedArea: selectedArea,
                searchController: searchController,
                onChanged: _onSelectionChanged,
              ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  s.search,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSelectionChanged(String? opType, String? service, String? gov, String? area) {
    setState(() {
      selectedOperationType = opType;
      selectedService = service;
      selectedGovernorate = gov;
      selectedArea = area;
    });
  }
}
