import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/help/help_logic.dart';
import 'package:capstone_restaurant/logic/url_collection.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio();

class UserDataProvider with ChangeNotifier {
  List<String> userData = [];
  List<String> get getData => userData;

  Future<bool> userLogin(data) async {
    // dynamic result;
    try {
      final response = await dio
          .post(userLoginURL, data: {"email": data[0], "password": data[1]});
      if (response.statusCode == 201) {
        // result = response.data;
        userData.addAll([
          response.data['results']['username'],
          response.data['results']['email'],
          response.data['results']['access_token']
        ]);
        localUserData = userData;
        notifyListeners();
        return response.data['response']['success'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return false;
      // throw Exception('Failed to load data from API: $error');
    }
  }

  Future<bool> userRegister(data) async {
    dynamic result;
    try {
      final response = await dio.post(userRegisterURL,
          data: {"username": data[0], "email": data[1], "password": data[2]});
      if (response.statusCode == 201) {
        result = response.data;
        notifyListeners();
        return result['response']['success'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return false;
      // throw Exception('Failed to load data from API: $error');
    }
  }

  Future<bool> checkStatus() async {
    try {
      final response = await dio.get(userGetDataURL,
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 200) {
        notifyListeners();
        return true;
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return false;
      // throw Exception('Failed to load data from API: $error');
    }
  }
}

class MenuDataProvider with ChangeNotifier {
  List allMenu = [];
  List get getMenu => allMenu;

  Future<List> getMenuAll() async {
    try {
      final response = await dio.get(menuFindAllURL,
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 200) {
        allMenu = response.data['results'];
        return response.data['results'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      debugPrint('Failed to load data from API: $error');
      return [];
      // throw Exception('Failed to load data from API: $error');
    }
  }

  Future<Map> getMenuById(id) async {
    try {
      final response = await dio.get('$menuFindIdURL/$id',
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 200) {
        return response.data['results'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return {};
      // throw Exception('Failed to load data from API: $error');
    }
  }

  Future getMenuByName(name) async {
    try {
      final response = await dio.get('$menuFindNameURL/$name',
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 200) {
        return response.data['results'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return [];
      // throw Exception('Failed to load data from API: $error');
    }
  }

  Future<List> getMenuByCat(category) async {
    try {
      final response = await dio.get('$menuFindCategoryURL/$category',
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 200) {
        return response.data['results'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return [];
      // throw Exception('Failed to load data from API: $error');
    }
  }
}

class ChatbotProvider with ChangeNotifier {
  String gptOutput = '';
  String userInput = '';
  List<dynamic> chatHistory = [];

  String get output => gptOutput;
  String get input => userInput;
  List<dynamic> get history => chatHistory;

  void updateLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }

  void updateOutput(data) {
    gptOutput = data;
    notifyListeners();
  }

  void updateInput(data) {
    userInput = data;
    notifyListeners();
  }

  void updateHistory() {
    chatHistory.add([input, output]);
    notifyListeners();
  }

  void clearChat() {
    chatHistory.clear();
    notifyListeners();
  }

  void askGPT(context, data) async {
    updateInput(data);
    await submit(context, data);
  }
}

class OrderDataProvider with ChangeNotifier {
  List<dynamic> ongoingData = [];
  List<dynamic> historyData = [];
  List<dynamic> get ongoing => ongoingData;
  List<dynamic> get history => historyData;

  Future<List> placeOrder(data) async {
    try {
      final response = await dio.post(placeOrderURL,
          data: {"order_items": data},
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 201) {
        notifyListeners();
        return [
          response.data['response']['success'],
          response.data['results']['id']
        ];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      return [false];
      // throw Exception('Failed to load data from API: $error');
    }
  }

  Future<void> fetchData() async {
    ongoingData.clear();
    historyData.clear();
    try {
      final response = await dio.get(historyOrderURL,
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));

      if (response.statusCode == 200) {
        List<dynamic> acceptedOrdersData = response.data['results'];
        for (int i = 0; i < acceptedOrdersData.length; i++) {
          if (acceptedOrdersData[i]['status'] == 'Accepted') {
            ongoingData.add(acceptedOrdersData[i]);
          }
        }

        List<dynamic> arrivedOrdersData = response.data['results'];
        for (int i = 0; i < arrivedOrdersData.length; i++) {
          if (arrivedOrdersData[i]['status'] == 'Arrived') {
            ongoingData.add(arrivedOrdersData[i]);
          }
        }

        notifyListeners();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Failed to load data: $error');
    }
  }
}

class PaymentDataProvider with ChangeNotifier {
  Future<String> openPaymentPage(id) async {
    try {
      final response = await dio.post(selectPaymentURL,
          data: {"order_ID": id},
          options: Options(
              headers: {'Authorization': 'Bearer ${localUserData[2]}'}));
      if (response.statusCode == 201) {
        notifyListeners();
        return response.data['results']['redirect_url'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (error) {
      // return false;
      throw Exception('Failed to load data from API: $error');
    }
  }
}

class FavoritesMenuProvider with ChangeNotifier {
  List userFavMenu = [];
  List get data => userFavMenu;

  void addToFav(data) {
    if (userFavMenu.contains(data)) {
      userFavMenu.remove(data);
    } else {
      userFavMenu.add(data);
    }
    notifyListeners();
  }
}

class CartHandler with ChangeNotifier {
  List<Map<String, dynamic>> userCart = [];
  List<String?> userNotes = [];
  int totalPrice = 0;

  List<Map<String, dynamic>> get cart => userCart;
  List<String?> get notes => userNotes;
  int get price => totalPrice;

  void addToCart(context, int id, int qty, num price) {
    int formatPrice = price.toInt();
    bool isItemExist = false;

    for (int i = 0; i < userCart.length; i++) {
      if (userCart[i]["menu_id"] == id) {
        userCart[i]["quantity"] += qty;
        isItemExist = true;
        totalPrice += formatPrice * qty;
        break;
      }
    }

    if (!isItemExist) {
      userCart.add({"menu_id": id, "quantity": qty});
      userNotes.add(null);
      totalPrice += formatPrice * qty;
    }

    notifyListeners();
  }

  void incrementItem(int id, int index, num price) {
    int formatPrice = price.toInt();
    for (int i = 0; i < userCart.length; i++) {
      if (userCart[i]["menu_id"] == id) {
        userCart[i]["quantity"] += 1;
        totalPrice += formatPrice;
        notifyListeners();
        break;
      }
    }
  }

  void decrementItem(int id, int index, num price) {
    int formatPrice = price.toInt();
    for (int i = 0; i < userCart.length; i++) {
      if (userCart[i]["menu_id"] == id) {
        if (userCart[i]["quantity"] > 1) {
          userCart[i]["quantity"] -= 1;
          totalPrice -= formatPrice;
          notifyListeners();
        }
        break;
      }
    }
  }

  void addNote(int index, String note) {
    userNotes[index] = note;
    notifyListeners();
  }

  String getFormattedPrice() {
    return formatCurrency(totalPrice);
  }
}

class BannerProvider with ChangeNotifier {
  int currentIndex = 0;
  int get index => currentIndex;

  void changeIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
