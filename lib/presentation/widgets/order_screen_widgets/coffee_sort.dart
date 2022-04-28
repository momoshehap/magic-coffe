import 'package:flutter/material.dart';

class CoffeeSort extends StatelessWidget {
  const CoffeeSort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(
        "Coffee Sort",
        style: Theme
            .of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontSize: 16),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: () {},
      ),
    );
  }
}
