import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/business_logic/cubit/navigation_cubit/home_navigation_cubit.dart';
import 'package:magic_cofee/business_logic/cubit/order_cubit/order_cubit.dart';
import 'package:magic_cofee/business_logic/cubit/theme_cubit/them_cubit.dart';
import 'package:magic_cofee/presentation/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemCubit>(
          create: (BuildContext context) => ThemCubit(),
        ),
        BlocProvider<HomeNavigationCubit>(
          create: (BuildContext context) => HomeNavigationCubit(),
        ),
        BlocProvider<OrderCubit>(
          create: (BuildContext context) => OrderCubit(),
        ),
      ],
      child: BlocBuilder<ThemCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Magic Coffee',
            theme: state.themeData,
            onGenerateRoute: AppRouter().onGenerateRoute,
          );
        },
      ),
    );
  }
}
