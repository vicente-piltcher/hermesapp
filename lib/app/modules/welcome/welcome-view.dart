import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/global/widgets/card.dart';
import 'package:hermesapp/app/modules/welcome/welcome-controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: Obx(() =>
          ListView.builder(
          itemCount: controller.listCards.length,
          //controller.listNews.length,
          itemBuilder: (context, index) {
            var item = controller.listCards[index];
            return CardApp(
              card: item,
              ctrl: controller,
            );
          })
      ),

    );
  }
}
