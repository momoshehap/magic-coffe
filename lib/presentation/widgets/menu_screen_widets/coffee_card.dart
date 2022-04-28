import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magic_cofee/domain/models/coffee.dart';

class CoffeeCard extends StatelessWidget {
  Coffee? coffee;

  CoffeeCard({Key? key, this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              child: Image.asset(
                "${coffee?.photo}",
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${coffee?.name}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
