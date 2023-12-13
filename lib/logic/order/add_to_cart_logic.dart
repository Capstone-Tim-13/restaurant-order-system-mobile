import 'package:capstone_restaurant/data.dart';

void addToCart(int id, int qty) {
  bool isItemExist = false;

  for (int i = 0; i < userCart.length; i++) {
    if (userCart[i][0] == id) {
      userCart[i][1] += qty;
      isItemExist = true;
      break;
    }
  }

  if (!isItemExist) {
    userCart.add([id, qty]);
  }
}

void incrementItem(int id, int index) {
  for (int i = 0; i < userCart.length; i++) {
    if (userCart[i][0] == id) {
      userCart[i][1] += 1;
    }
    // break;
  }
}

void decrementItem(int id, int index) {
  for (int i = 0; i < userCart.length; i++) {
    if (userCart[i][0] == id) {
      if (userCart[i][1] > 1) {
        userCart[i][1] -= 1;
      }
      break;
    }
  }
}
