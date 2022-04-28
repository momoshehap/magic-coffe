import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/business_logic/cubit/order_cubit/order_cubit.dart';
import 'package:magic_cofee/domain/models/order.dart';

class CoffeeServiceType extends StatelessWidget {
  const CoffeeServiceType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Onsite / Takeaway",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    context
                        .read<OrderCubit>()
                        .coffeeServiceType(ServiceType.onsite);
                  },
                  icon: ImageIcon(
                    const AssetImage(
                      "assets/onsite.png",
                    ),
                    color: context.read<OrderCubit>().order.serviceType ==
                            ServiceType.onsite
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).accentColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context
                        .read<OrderCubit>()
                        .coffeeServiceType(ServiceType.takeaway);
                  },
                  icon: ImageIcon(
                    const AssetImage("assets/takeaway.png"),
                    color: context.read<OrderCubit>().order.serviceType ==
                            ServiceType.takeaway
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
