import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardApp extends StatelessWidget  {
  final card;
  final ctrl;
  CardApp({Key? key, required this.card, required this.ctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: Icon(Icons.home),
              title: Text(card.title),
              subtitle: Text(card.completed ? 'Completado' : 'A Fazer'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Abrir'),
                  onPressed: () {
                   return ctrl.openCard(card.id);
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}