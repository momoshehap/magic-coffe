import 'package:flutter/material.dart';

class ItemDivider extends StatelessWidget {
  const ItemDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Divider(
        color: Theme.of(context).accentColor,
      ),
    );;
  }
}
