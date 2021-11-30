import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/modules/card_detail/card_detail-controller.dart';

class CardDetail extends GetView<CardDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('test')),
        body:  Container(
              child: Text('ok'),
            ));
  }
}
