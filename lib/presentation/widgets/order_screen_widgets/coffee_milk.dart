import 'package:flutter/material.dart';

import 'item_divider.dart';

class CoffeeMilk extends StatelessWidget {
  const CoffeeMilk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          "Milk",
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
                              Text("What type of milk do you prefer?",
                                  style: Theme.of(context).textTheme.bodyText2),
                              ItemDivider(),
                              Text("None",
                                  style: Theme.of(context).textTheme.bodyText1),
                              ItemDivider(),
                              Text("Cow's",
                                  style: Theme.of(context).textTheme.bodyText1),
                              ItemDivider(),
                              Text("Lactose-free",
                                  style: Theme.of(context).textTheme.bodyText1),
                              ItemDivider(),
                              Text("Skimmed",
                                  style: Theme.of(context).textTheme.bodyText1),
                              ItemDivider(),
                              Text("Vegetable",
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
        ));  }
}
