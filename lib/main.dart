import 'package:flutter/material.dart';

void main() {
  runApp(const MedCare());
}

class MedCare extends StatelessWidget{
  const MedCare({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("Welcome"),
       ),
     ),
   );
  }
}
