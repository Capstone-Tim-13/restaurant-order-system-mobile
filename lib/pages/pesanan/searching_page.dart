//Katarina
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = '/search';
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _searchHistory = ['Penne', 'Burger', 'Nasi Goreng', 'Fettucini'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/pesanan/Left_Circle.png',
            width: 24,
            height: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(137.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Cari makananmu disini',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  ),
                  keyboardAppearance: Brightness.dark,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Tambahkan logika saat ikon filter diklik
                  // Misalnya, tampilkan menu filter
                },
                icon: Image.asset(
                  'assets/images/pesanan/Filter.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pencarian Terbaru',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle clear history
                    setState(() {
                      _searchHistory.clear();
                    });
                  },
                  child: Text(
                    'Hapus Semua',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            _searchHistory.isEmpty
                ? Text('No recent searches.')
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _searchHistory.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey),
                            SizedBox(width: 8),
                            Text(
                              _searchHistory[index],
                              style: TextStyle(color: Color(0xFF727272)),
                            ),
                          ],
                        ),
                        onTap: () {
                          _searchController.text = _searchHistory[index];
                        },
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
