import 'package:capstone_restaurant/pages/home/menu_by_cat_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

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
    List data = [
      {
        'name': 'Pizza Margherita',
        'description':
            'Pizza dengan keju mozzarella, saus tomat, dan daun basil segar.',
        'price': 55000,
        'image':
            'https://images.prismic.io/eataly-us/ed3fcec7-7994-426d-a5e4-a24be5a95afd_pizza-recipe-main.jpg?auto=compress,format',
      }
    ];

    return SizedBox(
        child: ListView.builder(
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return showMenuByCat(context, data[0]);
      },
    ));
  }
}
