final List<String> serviceTypes = ["Medical Service", "Surgical Operation"];

final List<String> medicalServiceTypes = [
  "Clinic Consultation",
  "Home Visit",
  "Online Consultation",
  "Diagnostic Service",
];

final Map<String, List<String>> medicalServices = {
  "Clinic Consultation": ["Dentistry", "Cardiology", "Dermatology"],
  "Home Visit": ["Pediatrics", "Orthopedics", "General Medicine"],
  "Online Consultation": ["Psychiatry", "Nutrition", "Skin Care"],
  "Diagnostic Service": ["Blood Test", "X-Ray", "MRI Scan"],
};

final List<String> operationTypes = [
  "Minor Surgery",
  "Moderate Surgery",
  "Major Surgery",
];

final Map<String, List<String>> surgicalOperations = {
  "Minor Surgery": ["Tonsil Removal", "Cyst Removal", "Wound Cleaning"],
  "Moderate Surgery": ["Appendectomy", "Hernia Repair", "Gallbladder Surgery"],
  "Major Surgery": [
    "Open Heart Surgery",
    "Knee Replacement",
    "Brain Tumor Removal",
  ],
};

final List<String> governorates = ["Assiut"];
final Map<String, List<String>> areas = {
  "Assiut": ["Abnoub", "Manfalut", "Dairut", "El-Badari", "El-Qusiya"],
};
