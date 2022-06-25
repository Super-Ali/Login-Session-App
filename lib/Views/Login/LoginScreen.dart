import 'package:flutter/material.dart';
import 'package:ropstam_app/Constants/UsableConstants.dart';
import 'package:ropstam_app/Views/Login/widgets/LoginForm.dart';
import 'package:ropstam_app/Views/Login/widgets/SocialIcons.dart';
import 'package:ropstam_app/Views/Login/widgets/heroText.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.only(top: 60),
          width: width,
          decoration: lgBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const heroText(),
              const LoginForm(),
              const Text(
                "Or Continue with",
                style: smfont,
              ),
              const SocialIcons(),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(text: "Not a member? ", style: smfont),
                TextSpan(
                    text: " Register Now ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold))
              ]))
            ],
          ),
        ));
  }
}
