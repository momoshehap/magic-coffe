import 'package:flutter/cupertino.dart';

class CoffeeImageCard extends StatelessWidget {
  const CoffeeImageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFF7F8FB),
      ),
      child: Image.asset("assets/raf.png"),
    );
  }
}
