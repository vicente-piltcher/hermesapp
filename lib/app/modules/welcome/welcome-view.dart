import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/modules/welcome/welcome-controller.dart';

class WelcomePage extends GetView<WelcomeController> {
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
                      'Hermes Page',
                      style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 30,
                      ),
                    ),
                  )
                ),
              ],
            ),
          ],
      )
    );
  }
}