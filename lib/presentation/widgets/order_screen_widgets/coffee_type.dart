import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          "Coffee Type",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
        ),
        trailing: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            children: [
              SizedBox(
                height: 35,
                child: Slider(
                  max: 100,
                  divisions: 2,
                  thumbColor: Theme.of(context).backgroundColor,
                  onChanged: (double val) {

                  },
                  value: 10,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Arabica",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    "Robusta",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
