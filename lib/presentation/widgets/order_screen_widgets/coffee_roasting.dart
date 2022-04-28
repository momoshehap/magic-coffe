import 'package:flutter/material.dart';

class CoffeeRoasting extends StatelessWidget {
  const CoffeeRoasting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Roasting",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: SizedBox(
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(
                    "assets/roasting1.png",
                  ),
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage("assets/roasting2.png"),
                  size: 30,
                )),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage("assets/roasting3.png"),
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
