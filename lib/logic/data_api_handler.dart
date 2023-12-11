import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/help/help_logic.dart';
import 'package:capstone_restaurant/logic/url_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio();

class UserDataProvider with ChangeNotifier {
  List<String> userData = [];
  List<String> get getData => userData;

  Future<bool> userLogin(data) async {
    dynamic result;
    try {
      final response = await dio
          .post(userLoginURL, data: {"email": data[0], "password": data[1]});
      if (response.statusCode == 201) {
        result = response.data;
        userData.addAll([
          result['results']['username'],
          result['results']['email'],
          result['results']['access_token']
        ]);
        localUserData = userData;
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

class ChatbotHandler with ChangeNotifier {
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
  List<Map<String, dynamic>> ongoingData = [];
  List<Map<String, dynamic>> historyData = [];
  List<Map<String, dynamic>> cancelData = [];

  List<Map<String, dynamic>> get ongoing => ongoingData;
  List<Map<String, dynamic>> get history => historyData;
  List<Map<String, dynamic>> get cancel => cancelData;

  Future<void> fetchData() async {
    try {
      final response = await dio.get(
          'https://656ede2c6529ec1c6236d00a.mockapi.io/api/pesanan/pesanan');

      if (response.statusCode == 200) {
        final List<dynamic> dataList = response.data;
        final List<Map<String, dynamic>> data =
            List<Map<String, dynamic>>.from(dataList);

        ongoingData.clear();
        historyData.clear();
        cancelData.clear();

        // Group data by statusPesanan
        for (final Map<String, dynamic> item in data) {
          final String orderStatus = item['orderStatus'];

          if (orderStatus == 'berlangsung') {
            ongoingData.add(item);
          } else if (orderStatus == 'riwayat') {
            historyData.add(item);
          } else if (orderStatus == 'dibatalkan') {
            cancelData.add(item);
          }
        }
      } else {
        // Handle other status codes if needed
        throw Exception('Failed to load data');
      }
    } catch (error) {
      // Handle Dio errors
      throw Exception('Failed to load data: $error');
    }
  }
}

class PaymentDataProvider with ChangeNotifier {
  Future<String> openPaymentPage() async {
    try {
      final response = await dio.post(selectPaymentURL,
          data: {"order_ID": 2},
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

class FavoritesMenuHandler with ChangeNotifier {
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

