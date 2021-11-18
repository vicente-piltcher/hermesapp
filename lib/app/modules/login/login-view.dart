import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:hermesapp/app/global/widgets/rounded_button.dart';
import 'package:hermesapp/app/global/widgets/rounded_input_field.dart';
import 'package:hermesapp/app/global/widgets/rounded_password_field.dart';
import 'package:hermesapp/app/modules/login/login-controller.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Get.theme.primaryColor,
  minimumSize: Size(88, 55),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
        ),
        body: Column(
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 170.0,
                  width: 400.0,
                  padding: const EdgeInsets.only(top: 100.0),
                  //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    child: const Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                      'Hermes Login',
                      style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 30,
                      ),
                    ),
                  )
                ),
                Column(
                  children: <Widget>[
                    RoundedInputField(
                        hintText: "Email",
                        onChanged: (value) {  },
                        ctrl: controller.emailInput,
                      ),
                      Obx(
                      () => RoundedPasswordField(
                        showPass: controller.showPass.value,
                        changeButtonPass: () => {
                          controller.showPass.value = !controller.showPass.value
                        },
                        ctrl: controller.passwordInput,
                        onChanged: (value) {},
                      )
                    ),
                    Obx(() => Visibility(
                    visible: !controller.loading.value,
                    child: RoundedButton(
                      press: () => controller.login(),
                      text: 'Login',
                    ))),
                    Obx(
                  () => Visibility(
                    visible: controller.loading.value,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: Get.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: TextButton(
                          onPressed: () => {},
                          style: flatButtonStyle,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                  ],
                )
              ],
            ),
          ],
      )
    );
  }
}