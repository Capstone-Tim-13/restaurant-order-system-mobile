import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:dio/dio.dart';

class MenuLogic {
  static const baseUrl = "https://altaresto.my.id/user/menu";

  static Future<List<Menu>> getMenuByCategory(
      int categoryId, String token) async {
    final res = await dio.get("$baseUrl/category/$categoryId",
        options: Options(headers: {'Authorization': 'Bearer $token'}));

    final results = res.data['results'] as List<dynamic>;

    final menus = results
        .map((v) => Menu(
            id: v['id'],
            name: v['name'],
            image: v['image'],
            description: v['description'],
            price: v['price'],
            status: v['status']))
        .toList();

    return menus;
  }

  static Future<List<Menu>> getAllMenu(String token) async {
    final res = await dio.get(baseUrl,
        options: Options(headers: {'Authorization': 'Bearer $token'}));
    final results = res.data['results'] as List<dynamic>;
    final menus = results
        .map((v) => Menu(
            id: v['id'],
            name: v['name'],
            image: v['image'],
            categoryId: v['categoryId'],
            description: v['description'],
            price: v['price'],
            status: v['status']))
        .toList();
    return menus;
  }
}

class Menu {
  final int id;
  final String name;
  final String image;
  final int? categoryId;
  final String description;
  final int price;
  final bool status;

  Menu({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.status,
    this.categoryId,
  });
}
