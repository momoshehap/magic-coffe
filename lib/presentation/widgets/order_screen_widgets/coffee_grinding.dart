import 'package:flutter/material.dart';

class CoffeeGrinding extends StatelessWidget {
  const CoffeeGrinding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Grinding",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                  AssetImage(
                    "assets/grinding.png",
                  ),
                  size: 20),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage("assets/grinding.png"),
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
