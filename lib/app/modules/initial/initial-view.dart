import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/modules/initial/initial-controller.dart';
import 'package:hermesapp/app/routes/app-routes.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialPage extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 1,
            gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Colors.grey],
            ),
            navigateAfterSeconds: controller.verifyAuth(),
            loaderColor: Colors.transparent,
          ),
          Container(
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
