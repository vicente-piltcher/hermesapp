import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/modules/card_detail/card_detail-controller.dart';

class CardDetail extends GetView<CardDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title:  Obx(() => Text('Descrição: ' + controller.title.value))),
        body:   Container(
    child: Obx(() => Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(controller.completed.value ? Icons.check : Icons.close, color: controller.completed.value ? Colors.green : Colors.red),
          title: Text('Task: ' + controller.title.value),
          subtitle: Text(controller.completed.value ? 'Completado' : 'A Fazer'),
        ),
      ],
    ),
    )),
    ));
  }
}
