part of 'order_cubit.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class CoffeeQuantityState extends OrderState {
  int count;
  CoffeeQuantityState({required this.count});
}

class CoffeeRistrettoState extends OrderState {}
class ServiceTypeState extends OrderState {}
class VolumeState extends OrderState {}
class PrepareOnTimeState extends OrderState {
  bool isPrepared;
  PrepareOnTimeState(this.isPrepared) ;
}

