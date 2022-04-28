import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/domain/models/order.dart';

import '../../../business_logic/cubit/order_cubit/order_cubit.dart';

class CoffeeRistretto extends StatelessWidget {
  const CoffeeRistretto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          "Ristretto",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
        ),
        trailing: SizedBox(
          width: 210,
          child: BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<OrderCubit>().coffeeRistretto(Ristretto.one);
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: context.read<OrderCubit>().order.ristretto==Ristretto.one
                            ? Theme.of(context).primaryColor
                            : Colors.transparent,
                        border: Border.all(
                            color: Theme.of(context).accentColor, width: 1.5),
                      ),
                      child: Center(
                        child: Text(
                          "One",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<OrderCubit>().coffeeRistretto(Ristretto.tow);
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: context.read<OrderCubit>().order.ristretto==Ristretto.tow
                            ? Theme.of(context).primaryColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Theme.of(context).accentColor, width: 1.5),
                      ),
                      child: Center(
                        child: Text(
                          "Two",
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }
}
