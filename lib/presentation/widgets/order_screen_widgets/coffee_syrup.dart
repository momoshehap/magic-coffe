import 'package:flutter/material.dart';
import 'package:magic_cofee/presentation/widgets/order_screen_widgets/item_divider.dart';

class CoffeeSyrup extends StatelessWidget {
  const CoffeeSyrup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Syrup",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: InkWell(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text("What flavor of syrup do you prefer?",
                                style: Theme.of(context).textTheme.bodyText2),
                            ItemDivider(),
                            Text("None",
                                style: Theme.of(context).textTheme.bodyText1),
                            ItemDivider(),
                            Text("Amaretto",
                                style: Theme.of(context).textTheme.bodyText1),
                            ItemDivider(),
                            Text("Coconut",
                                style: Theme.of(context).textTheme.bodyText1),
                            ItemDivider(),
                            Text("Vanilla",
                                style: Theme.of(context).textTheme.bodyText1),
                            ItemDivider(),
                            Text("Caramel",
                                style: Theme.of(context).textTheme.bodyText1),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 20),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        child: Text(
          "Select",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
