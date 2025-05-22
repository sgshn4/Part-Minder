class Car {
  final int databaseId;
  final String brand;
  final String model;
  final String color;
  final int power;
  final int capacity;
  int mileage;
  final int production;

  Car({
    required this.databaseId,
    required this.brand,
    required this.model,
    required this.color,
    required this.power,
    required this.capacity,
    required this.mileage,
    required this.production,
  });

  Car getCarInfo() {
    return Car(databaseId: databaseId, brand: brand, model: model, color: color, power: power, capacity: capacity, mileage: mileage, production: production);
  }

  void setMileage(int value) {
    mileage = value;
  }
}
