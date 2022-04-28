import 'coffee.dart';

class Order {
  Coffee? coffee;
  int? count;
  Ristretto? ristretto;
  ServiceType? serviceType;
  Volume? volume;
  bool? prepare;
  CoffeeType? coffeeType;
  Roasting? roasting;
  Grinding? grinding;
  String? milk;
  String? syrup;

  Order(
      {this.coffee,
      this.count,
      this.ristretto,
      this.serviceType,
      this.volume,
      this.grinding,
      this.roasting,
      this.coffeeType,
      this.milk,
      this.prepare,
      this.syrup,});
}

enum ServiceType { onsite, takeaway }
enum Ristretto { one, tow }
enum Volume { small, medium, large }
enum CoffeeType { arabica, robusta }
enum Roasting { small, medium, large }
enum Grinding { soft, rough }
