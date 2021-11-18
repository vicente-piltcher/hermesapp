import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/modules/welcome/welcome-controller.dart';

class SignupPage extends GetView<WelcomeController> {
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
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0, right: 7.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.person),
                          hintText: "Username"
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0, right: 7.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.arrow_right),
                          hintText: "Password"
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0, top: 190.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.purple,
                          elevation: 10.0,
                          shadowColor: Colors.white
                        ),
                        child: Text('Login', style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          () => Get.toNamed('/welcome');
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 190.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.purple,
                          elevation: 10.0,
                          shadowColor: Colors.white
                        ),
                        child: Text('Registrar', style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          () => Get.toNamed('/signup');
                        },
                      ),
                    )
                  ],
                ),
              ],
              )
          ],
      )
    );
  }
}