import 'package:capstone_restaurant/logic/data_api_handler.dart';
import 'package:capstone_restaurant/pages/home/menu_by_cat_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchResult extends StatefulWidget {
  final String searchedFood;
  const SearchResult({super.key, required this.searchedFood});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: showSearchResults(),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/icons/backButton.png'),
          ),
          const SizedBox(width: 8),
          Text(
            'Menampilkan ${widget.searchedFood}',
            style: poppins,
          ),
        ],
      ),
    );
  }

  Widget showSearchResults() {
    final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);

    return FutureBuilder<dynamic>(
      future: menuProvider.getMenuByName(widget.searchedFood),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator(
            color: primary4,
            // value: progressController.value,
            strokeWidth: 6,
          ));
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 1,
              itemBuilder: (context, index) {
                if (snapshot.data == null || snapshot.data.isEmpty) {
                  // Jika kosong, return teks sebagai gantinya
                  return Center(
                    child: Text(
                      'Tidak ada hasil untuk "${widget.searchedFood}"',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                } else {
                  // Jika tidak kosong, return widget yang menampilkan hasil pencarian
                  return showMenuByCat(context, snapshot.data[0]);
                }
              },
            ),
          );
        }
      },
    );
  }
}
