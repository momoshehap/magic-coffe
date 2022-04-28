import 'package:bloc/bloc.dart';
import 'package:magic_cofee/presentation/screens/orders_list_screen.dart';
import 'package:magic_cofee/presentation/screens/reword_sccreen.dart';
import 'package:meta/meta.dart';

import '../../../enum/home_taps.dart';
import '../../../presentation/screens/menu_screen.dart';

part 'home_navigation_state.dart';

class HomeNavigationCubit extends Cubit<HomeNavigationState> {
  HomeTabs currentTab = HomeTabs.menu;
  final tabs = [
    MenuScreen(),
    RewordScreen(),
    OrdersListScreen(),
  ];

  HomeNavigationCubit() : super(HomeNavigationInitial());

  changeTab(HomeTabs targetTab) {
    currentTab = targetTab;
    emit(HomeNavigationChange(currentTab));
  }

}
