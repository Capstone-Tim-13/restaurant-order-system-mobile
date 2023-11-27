import 'package:flutter/material.dart';

class MenuFilter extends StatefulWidget {
  const MenuFilter({Key? key}) : super(key: key);

  @override
  MenuFilterState createState() => MenuFilterState();
}

class MenuFilterState extends State<MenuFilter> {
  String selectedCategory = 'All';

  void navigateBack() {
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 68.0, left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: navigateBack,
                  child: Icon(Icons.arrow_circle_left_sharp, color: Color(0xFF783525),)),
                SizedBox(width: 8),
                Text('Filter',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 18.0, left: 38.0),
                      child: Text(
                        'Kategori',
                        style: TextStyle(
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                        height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Wrap(
                        spacing: 8.0, // Jarak antara tombol
                        runSpacing: 16.0, // Jarak antara baris
                        alignment: WrapAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Semua';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Semua',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Ala Carte';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Ala Carte',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Paket Hemat';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Paket Hemat',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Appetizer';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFF783525),),
                            child: Text('Appetizer',
                            style: TextStyle(color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Minum';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Minum',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Dessert';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Dessert',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.only(top: 18.0, left: 38.0),
                      child: Text(
                        'Rentang Harga',
                        style: TextStyle(
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                        height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Wrap(
                        spacing: 8.0, // Jarak antara tombol
                        runSpacing: 16.0, // Jarak antara baris
                        alignment: WrapAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Rp 10.000-Rp 20.000';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Rp 10.000-Rp 20.000',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Rp 20.000-Rp 40.000';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('Rp 20.000-Rp 40.000',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'Rp 40.000-Rp 60.000';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFF783525),),
                            child: Text('Rp 40.000-Rp 60.000',
                            style: TextStyle(color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = '> Rp 60.000';
                                print('Kategori dipilih: $selectedCategory');
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Color(0xFFF1F1F1),),
                            child: Text('> Rp 60.000',
                            style: TextStyle(color: Color(0xFF737373),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
