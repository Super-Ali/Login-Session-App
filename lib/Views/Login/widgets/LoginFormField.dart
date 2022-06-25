import 'package:flutter/material.dart';
import 'package:ropstam_app/Constants/UsableConstants.dart';

class LoginFormField extends StatelessWidget {
  final String labelText;
  final String? errortext;
  final TextEditingController fieldcontroller;
  final bool obscure;

  const LoginFormField(
      {Key? key,
      required this.labelText,
      required this.obscure,
      this.errortext,
      required this.fieldcontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxWidth: 300),
        child: TextFormField(
          controller: fieldcontroller,
          obscureText: obscure,
          decoration: fieldDecor(labelText),
          validator: (value) {
            if (value == null || value.isEmpty)
              return errortext ?? "This field is mandatory";
            return null;
          },
        ));
  }
}
