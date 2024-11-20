// Parent class
class Apple {
  String brand;

  // Constructor
  Apple(this.brand);

  // Method
  void powerOn() {
    print('$brand device is powering on.');
  }
}

// Child class Smartphone
class Iphone extends Apple {
  String operatingSystem;

  // Constructor for Smartphone
  Iphone(String brand, this.operatingSystem) : super(brand);

  // Additional method
  void makeCall(String number) {
    print('Calling $number using $brand smartphone running $operatingSystem.');
  }
}

// Child class Laptop
class MacBook extends Apple {
  String processor;

  // Constructor for Laptop
  MacBook(String brand, this.processor) : super(brand);

  // Additional method
  void compileCode() {
    print('$brand laptop with $processor is compiling code.');
  }
}

void main() {
  // Create an instance of Smartphone
  Iphone phone = Iphone('Iphone 16Pro Max', 'iOS');
  phone.powerOn(); // Output: Apple device is powering on.
  phone.makeCall(
      '123-456-7890'); // Output: Calling 123-456-7890 using Apple smartphone running iOS.

  // Create an instance of Laptop
  MacBook macbook = MacBook('MacBook', 'M2 pro');
  macbook.powerOn(); // Output: Dell device is powering on.
  macbook.compileCode(); // Output: Dell laptop with Intel i7 is compiling code.
}
