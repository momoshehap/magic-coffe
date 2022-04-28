import 'package:bloc/bloc.dart';
import 'package:magic_cofee/domain/models/order.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());

  Order order = Order(
      count: 1,
      ristretto: Ristretto.one,
      serviceType: ServiceType.onsite,
      volume: Volume.small,prepare: true);

  /// count
  void orderCountMinus() {
    if (order.count != 0) {
      order.count = (order.count)! - 1;
      emit(CoffeeQuantityState(count: order.count!));
    }
  }

  void orderCountPlus() {
    order.count = order.count! + 1;
    emit(CoffeeQuantityState(count: order.count!));
  }

  /// Ristretto
  void coffeeRistretto(Ristretto ristretto) {
    order.ristretto = ristretto;
    emit(CoffeeRistrettoState());
  }

  ///Service Type
  void coffeeServiceType(ServiceType serviceType) {
    order.serviceType = serviceType;
    emit(ServiceTypeState());
  }

  ///Volume
  void coffeeVolume(Volume volume) {
    order.volume = volume;
    emit(VolumeState());
  }

  void prepareOnTime(bool isPrepared) {
    order.prepare =isPrepared;
    emit(PrepareOnTimeState(isPrepared));
  }
}
