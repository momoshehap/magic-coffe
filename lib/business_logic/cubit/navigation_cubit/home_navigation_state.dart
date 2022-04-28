part of 'home_navigation_cubit.dart';

@immutable
abstract class HomeNavigationState {}

class HomeNavigationInitial extends HomeNavigationState {}

class HomeNavigationChange extends HomeNavigationState {
  final HomeTabs tab;
  HomeNavigationChange(this.tab);
}
