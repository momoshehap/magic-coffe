import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_cofee/business_logic/cubit/navigation_cubit/home_navigation_cubit.dart';

import '../../enum/home_taps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeNavigationCubit, HomeNavigationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              IndexedStack(
                index: context.read<HomeNavigationCubit>().currentTab.index,
                children: context.read<HomeNavigationCubit>().tabs,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  padding: const EdgeInsets.only(top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    currentIndex:
                        context.read<HomeNavigationCubit>().currentTab.index,
                    items: [
                      BottomNavigationBarItem(
                        activeIcon: ImageIcon(
                          AssetImage("assets/menu.png"),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        icon: ImageIcon(
                          AssetImage("assets/menu.png"),
                          color: Theme.of(context).accentColor,
                        ),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                        activeIcon: ImageIcon(
                          AssetImage("assets/reward.png"),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        icon: ImageIcon(
                          AssetImage("assets/reward.png"),
                          color: Theme.of(context).accentColor,
                        ),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                        activeIcon: ImageIcon(
                          AssetImage("assets/order_menu.png"),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        icon: ImageIcon(
                          AssetImage("assets/order_menu.png"),
                          color: Theme.of(context).accentColor,
                        ),
                        label: "",
                      ),
                    ],
                    onTap: (index) {
                      context
                          .read<HomeNavigationCubit>()
                          .changeTab(HomeTabs.values[index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
