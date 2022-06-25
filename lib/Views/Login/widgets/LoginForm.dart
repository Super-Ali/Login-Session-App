import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ropstam_app/Constants/Controllers.dart';
import 'package:ropstam_app/Services/Loginservice.dart';
import 'package:ropstam_app/Views/Home/HomeScreen.dart';
import 'package:ropstam_app/Views/Login/widgets/LoginFormButton.dart';
import 'package:ropstam_app/Views/Login/widgets/LoginFormField.dart';
import 'package:ropstam_app/Views/Login/widgets/heroText.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    String token = "zasdcvgtghnkiuhgfde345tewasdfghjkm";

    return Obx(
      () => Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LoginFormField(
                labelText: "Enter UserName",
                errortext: "Username is Required",
                obscure: false,
                fieldcontroller: email,
              ),
              SizedBox(
                height: 17,
              ),
              Stack(
                children: [
                  LoginFormField(
                    labelText: "Password",
                    errortext: "Password is Required",
                    obscure: sessionController.obscure.value,
                    fieldcontroller: password,
                  ),
                  Positioned(
                      right: 10,
                      top: 15,
                      child: GestureDetector(
                          onTap: () {
                            sessionController.enableObscure();
                          },
                          child: Icon(sessionController.obscure.value
                              ? Icons.remove_red_eye
                              : Icons.lock)))
                ],
              ),
              passrecover(),
              LoginFormButton(login: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  login(email.text, password.text, token).then((value) async {
                    print(value['meta']['status'].toString());
                    if (value['meta']['status'] == 401) {
                      sessionController.enableError();
                    } else {
                      sessionController.box.write('userdata', value);
                      Get.offAll(() => HomeScreen());
                    }
                  });
                }
              }),
              Visibility(
                visible: sessionController.errormessage.value,
                child: Text(
                  "Invalid Username or Password",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          )),
    );
  }
}
