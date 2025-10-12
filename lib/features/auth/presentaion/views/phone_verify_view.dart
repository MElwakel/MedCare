import 'package:flutter/material.dart';

import 'package:medcare/features/auth/presentaion/views/widgets/phone_verify_view_body.dart';


class PhoneNumberVerifyView extends StatelessWidget {
  const PhoneNumberVerifyView({super.key});
  static const String id = '/phonenumberview';

  @override
  Widget build(BuildContext context) {
    return PhoneNumberVerifyViewBody();
  }
}
