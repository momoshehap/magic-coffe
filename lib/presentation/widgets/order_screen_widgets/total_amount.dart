import 'package:flutter/material.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Total Amount",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: Text(
        "BYN 3.00",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
    );
  }
}
