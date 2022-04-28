import 'package:flutter/material.dart';
import 'package:magic_cofee/domain/models/coffee.dart';

import '../../../utils/strings.dart';
import 'coffee_card.dart';

class CoffeeList extends StatelessWidget {
  const CoffeeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Select your coffee",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * .68,
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: .9,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 6.0,
                  maxCrossAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(orderScreen);
                    },
                    child: CoffeeCard(
                      coffee: Coffee(name: "Late", photo: "assets/raf.png"),
                    ),
                  );
                },
              ),
            )
            //////////////
          ],
        ),
      ),
    );
  }
}
