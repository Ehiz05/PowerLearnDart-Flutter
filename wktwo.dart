void main() {
  // Typical pricing
  List<double> groceryPrices = [10.5, 3.0, 60.0, 16.0, 7.0];

  // Discounting groceries
  double discountRate = 0.10;
  List<double> rebatePrices =
      applyDiscount(groceryPrices, (price) => price * (1 - discountRate));
  print("Price at 10% discount: $rebatePrices");

  // Enumerate pricing (+ tax on discounted prices)
  double taxRate = 0.08; // 8% tax
  double grossSale = calcTotal(rebatePrices, taxRate: taxRate);
  print("Net Total: \$${grossSale.toStringAsFixed(2)}");

  // Using factorial to calculate special discount on groceries
  int numGroceries = groceryPrices.length;
  int factorialDiscount = calcFactorialDiscount(numGroceries);
  print(
      "Grocery special discount (based on $numGroceries items): $factorialDiscount%");

  // Using special factorial discount with total price
  double finalPrice = grossSale * (1 - factorialDiscount / 100);
  print(
      "Overrall price with factorial discount: \$${finalPrice.toStringAsFixed(2)}");
}

// calculating total price  (+tax parameter)
double calcTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  return subtotal * (1 + taxRate);
}

// Base Function applying discount to groceries collectively in the list
List<double> applyDiscount(
    List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

// Using recursive Function for factorial discount
int calcFactorialDiscount(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * calcFactorialDiscount(n - 1);
}
