import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome!", style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Alex",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage("assets/buy.png"),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage("assets/profile.png"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
