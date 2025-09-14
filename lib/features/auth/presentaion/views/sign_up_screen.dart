import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/core/widgets/custom_text_form_field.dart';
import 'package:medcare/core/widgets/password_text_filed.dart';
import 'package:medcare/features/auth/presentaion/views/sign_in_view.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/governorate_city_picker.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _confirmPasswordController =
  //     TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  Future<void> _pickDateOfBirth() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _dobController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  // اسم ثنائى على الاقل
  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Full name is required";
    }
    if (!value.trim().contains(" ")) {
      return "Please enter at least first and last name";
    }
    return null;
  }

  // ايميل صحيح
  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Email is required";
    }
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!emailRegex.hasMatch(value.trim())) {
      return "Enter a valid email address";
    }
    return null;
  }

  // باسورد قوى
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    if (!RegExp(r"[A-Z]").hasMatch(value)) {
      return "Password must contain at least 1 uppercase letter";
    }
    if (!RegExp(r"[a-z]").hasMatch(value)) {
      return "Password must contain at least 1 lowercase letter";
    }
    if (!RegExp(r"\d").hasMatch(value)) {
      return "Password must contain at least 1 digit";
    }
    if (!RegExp(r"[!@#\$&*~]").hasMatch(value)) {
      return "Password must contain at least 1 special character (!@#\$&*~)";
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Sign up successfully")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  // Logo
                  Center(
                    child: Icon(
                      Icons.health_and_safety,
                      size: 60,
                      color: Colors.red[700],
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    "Join MediCare!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Sign up easily, book your medical consultation, and stay healthy anytime",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),

                  // Full Name
                  CustomTextFormField(
                    hintText: "Full Name",
                    iconData: Icons.person_outline,
                    textInputType: TextInputType.name,
                  ),

                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: _pickDateOfBirth,
                    child: AbsorbPointer(
                      child: CustomTextFormField(
                        hintText: "Date of Birth",
                        iconData: Icons.calendar_month,
                        textInputType: TextInputType.datetime,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GovernorateCityPicker(
                    onGovernorateChanged: (gov) {
                      if (kDebugMode) {
                        print("Governorate: $gov");
                      }
                    },

                    onCityChanged: (city) {
                      if (kDebugMode) {
                        print("City: $city");
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    hintText: "Email",
                    iconData: Icons.email_outlined,
                    textInputType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 15),

                  PasswordTextFormField(
                    hintText: "Password",

                  ),
                  const SizedBox(height: 15),
                  PasswordTextFormField(
                    hintText: "Confirm Password",

                  ),

                  const SizedBox(height: 20),

                  CustomButton(text: "Sign Up", onTap: _submitForm),

                  const SizedBox(height: 20),

                  const Center(child: Text("Or continue with social account")),
                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.red,
                        ),
                        label: const Text("Google"),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                        ),
                        label: const Text("Facebook"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInView(),));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
