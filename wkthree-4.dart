abstract class Appliance {
  String brand;

  Appliance(this.brand);

  void turnOn();

  void displayBrand() {
    print('This is $brand appliance.');
  }
}

class WashingMachine extends Appliance {
  WashingMachine(String brand) : super(brand);

  @override
  void turnOn() {
    print('$brand Washing Machine is now doing laundry.');
  }
}

class Microwave extends Appliance {
  Microwave(String brand) : super(brand);

  @override
  void turnOn() {
    print('$brand Microwave is now warming the meal.');
  }
}

class Refrigerator extends Appliance {
  Refrigerator(String brand) : super(brand);

  @override
  void turnOn() {
    print('$brand Refrigerator is cooling your food.');
  }
}

void main() {
  List<Appliance> appliances = [
    WashingMachine('Midea'),
    Microwave('Samsung'),
    Refrigerator('Thermocool'),
  ];

  for (var appliance in appliances) {
    appliance.displayBrand();
    appliance.turnOn();
    print('---');
  }
}
