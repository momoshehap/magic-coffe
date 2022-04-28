import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/business_logic/cubit/order_cubit/order_cubit.dart';

class PreparedByDay extends StatelessWidget {
  const PreparedByDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Prepare by a certain time today?",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      trailing: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return Switch(
            value: context.read<OrderCubit>().order.prepare!,
            activeColor: Colors.green,
            onChanged: (vale) {
              context.read<OrderCubit>().prepareOnTime(vale);
            },
          );
        },
      ),
    );
  }
}
