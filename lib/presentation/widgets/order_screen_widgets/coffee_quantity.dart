import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/business_logic/cubit/order_cubit/order_cubit.dart';

class CoffeeQuantity extends StatelessWidget {
  const CoffeeQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Late",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).accentColor, width: 1.5),
        ),
        child: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      context.read<OrderCubit>().orderCountPlus();
                    },
                    child: Icon(
                      Icons.add,
                      color: Theme.of(context).iconTheme.color,
                    )),
                Text(
                  context.read<OrderCubit>().order.count.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.normal),
                ),
                InkWell(
                  onTap: () {
                    context.read<OrderCubit>().orderCountMinus();
                  },
                  child: Icon(
                    Icons.remove,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
