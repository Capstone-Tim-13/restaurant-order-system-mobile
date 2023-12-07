import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/data_api_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<dynamic> getListLen(context, request) async {
  final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);
  switch (request) {
    case 'Appetizer':
      List result = await menuProvider.getMenuByCat(1);
      return result;
    case 'Dessert':
      List result = await menuProvider.getMenuByCat(2);
      return result;
    case 'Ala Carte':
      List result = await menuProvider.getMenuByCat(3);
      return result;
    case 'Paket Hemat':
      List result = await menuProvider.getMenuByCat(4);
      return result;
    case 'Minum':
      List result = await menuProvider.getMenuByCat(5);
      return result;
    default:
      List result = await menuProvider.getMenuAll();
      return result;
  }
}

Future<String> getCategory(context, name) async {
  final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);

  final result = await menuProvider.getMenuByName(name);
  switch (result['categoryid']) {
    case 1:
      return 'Appetizer';
    case 2:
      return 'Dessert';

    case 3:
      return 'Ala Carte';

    case 4:
      return 'Paket Hemat';

    case 5:
      return 'Minum';
  }
  return 'error';
}
