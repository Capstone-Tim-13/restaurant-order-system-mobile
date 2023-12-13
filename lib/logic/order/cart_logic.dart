import 'package:capstone_restaurant/widgets.dart';

calculatePrice(price) {
  int totalPice = price.toInt();
  return formatCurrency(totalPice);
}
