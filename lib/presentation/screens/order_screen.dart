import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magic_cofee/domain/models/coffee.dart';

import '../widgets/order_screen_widgets/coffee_grinding.dart';
import '../widgets/order_screen_widgets/coffee_image_card.dart';
import '../widgets/order_screen_widgets/coffee_milk.dart';
import '../widgets/order_screen_widgets/coffee_quantity.dart';
import '../widgets/order_screen_widgets/coffee_ristretto.dart';
import '../widgets/order_screen_widgets/coffee_roasting.dart';
import '../widgets/order_screen_widgets/coffee_service_type.dart';
import '../widgets/order_screen_widgets/coffee_sort.dart';
import '../widgets/order_screen_widgets/coffee_syrup.dart';
import '../widgets/order_screen_widgets/coffee_type.dart';
import '../widgets/order_screen_widgets/coffee_volume.dart';
import '../widgets/order_screen_widgets/item_divider.dart';
import '../widgets/order_screen_widgets/next_button.dart';
import '../widgets/order_screen_widgets/prepared_by_day.dart';
import '../widgets/order_screen_widgets/time_widget.dart';
import '../widgets/order_screen_widgets/total_amount.dart';

class OrderScreen extends StatefulWidget {
  Coffee coffee;

  OrderScreen({Key? key, required this.coffee}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order", style: Theme.of(context).textTheme.bodyText1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(
                "assets/buy.png",
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .75,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: const [
                  CoffeeImageCard(),
                  SizedBox(height: 5),
                  CoffeeQuantity(),
                  ItemDivider(),
                  CoffeeRistretto(),
                  ItemDivider(),
                  CoffeeServiceType(),
                  ItemDivider(),
                  CoffeeVolume(),
                  ItemDivider(),
                  PreparedByDay(),
                  TimeWidget(),
                  ItemDivider(),
                  CoffeeType(),
                  ItemDivider(),
                  CoffeeSort(),
                  ItemDivider(),
                  CoffeeRoasting(),
                  ItemDivider(),
                  CoffeeGrinding(),
                  ItemDivider(),
                  CoffeeMilk(),
                  ItemDivider(),
                  CoffeeSyrup(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          const TotalAmount(),
          const NextButton(),
        ],
      ),
    );
  }
}
