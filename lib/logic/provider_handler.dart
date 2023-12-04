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
          options:
              Options(headers: {'Authorization': 'Bearer ${userData[2]}'}));
      if (response.statusCode == 200) {
        debugPrint(userData[2]);
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

// class PaymentDataProvider with ChangeNotifier {
//   List defaultPaymentMethod = [];
//   List get data => defaultPaymentMethod;

// }
