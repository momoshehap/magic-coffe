import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/business_logic/cubit/order_cubit/order_cubit.dart';
import 'package:magic_cofee/domain/models/order.dart';

class CoffeeVolume extends StatelessWidget {
  const CoffeeVolume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Volume",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      context.read<OrderCubit>().coffeeVolume(Volume.small);
                    },
                    icon:  ImageIcon(
                     const  AssetImage(
                        "assets/volume1.png",
                      ),
                      size: 20,
                      color: context.read<OrderCubit>().order.volume==Volume.small
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).accentColor,
                    )),
                IconButton(
                    onPressed: () {
                      context.read<OrderCubit>().coffeeVolume(Volume.medium);
                    },
                    icon:  ImageIcon(
                      const AssetImage("assets/volume2.png"),
                      size: 25,
                      color: context.read<OrderCubit>().order.volume==Volume.medium
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).accentColor,
                    )),
                IconButton(
                  onPressed: () {
                    context.read<OrderCubit>().coffeeVolume(Volume.large);
                  },
                  icon:  ImageIcon(
                   const  AssetImage("assets/volume3.png"),
                    size: 30,
                    color: context.read<OrderCubit>().order.volume==Volume.large
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
