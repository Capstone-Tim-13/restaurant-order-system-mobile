import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:provider/provider.dart';

Future<dynamic> getListLen(context, request) async {
  final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);
  switch (request) {
    case 'Appetizer':
      List result = await menuProvider.getMenuByCat(1, userData[2]);
      return result;
    case 'Dessert':
      List result = await menuProvider.getMenuByCat(2, userData[2]);
      return result;
    case 'Ala Carte':
      List result = await menuProvider.getMenuByCat(3, userData[2]);
      return result;
    case 'Paket Hemat':
      List result = await menuProvider.getMenuByCat(4, userData[2]);
      return result;
    case 'Minum':
      List result = await menuProvider.getMenuByCat(5, userData[2]);
      return result;
    default:
      List result = await menuProvider.getMenuAll(userData[2]);
      return result;
  }
}