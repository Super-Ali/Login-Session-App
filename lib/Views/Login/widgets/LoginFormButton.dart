import 'package:flutter/material.dart';

class LoginFormButton extends StatelessWidget {
  Function login;
  LoginFormButton({Key? key, required this.login}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: Colors.green),
        onPressed: () => login(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text("Login"),
        ),
      ),
    );
  }
}
