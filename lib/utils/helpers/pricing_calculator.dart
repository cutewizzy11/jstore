
class FPricingCalculator {

  /// --- Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// --- Calculate shipping cost
  static double calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost;
  }

  /// --- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //Check the tax rate for the given location using a tax rate database or API.
    //Return the appropriate rate.
    return 0.10; //example of tax rate of 10%
  }

  static double getShippingCost(String location) {
    //Check the shipping cost for the given location using a shipping rate API.
    //Calculate the shipping cost based on various factors like distance, weight, etc
    return 5.00; //example of shipping cost of 5 naira
  }

  /// --- Sum all cart values and return total amount
  //static double calculateCartTotal(CartModel cart) {
    //return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  //}
}