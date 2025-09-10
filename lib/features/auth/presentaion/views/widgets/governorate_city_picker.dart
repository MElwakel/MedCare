import 'package:flutter/material.dart';
import 'egypt_data.dart';

class GovernorateCityPicker extends StatefulWidget {
  const GovernorateCityPicker({
    super.key,
    this.onGovernorateChanged,
    this.onCityChanged,
  });

  final void Function(String?)? onGovernorateChanged;
  final void Function(String?)? onCityChanged;

  @override
  State<GovernorateCityPicker> createState() => _GovernorateCityPickerState();
}

class _GovernorateCityPickerState extends State<GovernorateCityPicker> {
  String? selectedGovernorate;
  String? selectedCity;

  OutlineInputBorder _buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: 1.2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Governorate
        DropdownButtonFormField<String>(
          initialValue: selectedGovernorate,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.location_city,
              color: Color(0xff0E7885),
            ),
            labelText: "Governorate",
            labelStyle: const TextStyle(color: Colors.grey),
            border: _buildOutlineInputBorder(Colors.grey),
            enabledBorder: _buildOutlineInputBorder(Colors.grey),
            focusedBorder: _buildOutlineInputBorder(const Color(0xff0E7885)),
            errorBorder: _buildOutlineInputBorder(Colors.red),
            focusedErrorBorder: _buildOutlineInputBorder(Colors.red),
          ),
          items:
              governorates.keys.map((gov) {
                return DropdownMenuItem(value: gov, child: Text(gov));
              }).toList(),
          onChanged: (value) {
            setState(() {
              selectedGovernorate = value;
              selectedCity = null;
            });
            widget.onGovernorateChanged?.call(value);
          },
          validator:
              (value) => value == null ? "Please select the governorate" : null,
        ),
        const SizedBox(height: 15),

        // City
        DropdownButtonFormField<String>(
          initialValue: selectedCity,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.place, color: Color(0xff0E7885)),
            labelText: "City",
            labelStyle: const TextStyle(color: Colors.grey),
            border: _buildOutlineInputBorder(Colors.grey),
            enabledBorder: _buildOutlineInputBorder(Colors.grey),
            focusedBorder: _buildOutlineInputBorder(const Color(0xff0E7885)),
            errorBorder: _buildOutlineInputBorder(Colors.red),
            focusedErrorBorder: _buildOutlineInputBorder(Colors.red),
          ),
          items:
              selectedGovernorate == null
                  ? []
                  : governorates[selectedGovernorate]!.map((city) {
                    return DropdownMenuItem(value: city, child: Text(city));
                  }).toList(),
          onChanged: (value) {
            setState(() {
              selectedCity = value;
            });
            widget.onCityChanged?.call(value);
          },
          validator: (value) => value == null ? "Please select a city" : null,
        ),
      ],
    );
  }
}
