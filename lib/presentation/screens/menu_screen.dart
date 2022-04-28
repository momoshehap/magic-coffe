import 'package:flutter/material.dart';

import '../widgets/menu_screen_widets/coffee_list.dart';
import '../widgets/menu_screen_widets/menu_app_bar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        MenuAppBar(),
        SizedBox(height: 20,),
        CoffeeList(),
      ],
    )));
  }
}
