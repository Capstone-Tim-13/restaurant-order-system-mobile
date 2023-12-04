import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/home/menu_by_cat_page.dart';
import 'package:capstone_restaurant/pages/profile/address_page.dart';
import 'package:capstone_restaurant/pages/order/payment_method_page.dart';
import 'package:capstone_restaurant/pages/order/payment_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DetailOrder {
  List notes = List.filled(5, '');
  List items = List.filled(5, 1);
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkBoxVal = false;
  TextEditingController inputUserNote = TextEditingController();
  List paymentData = [];
  List notes = List.filled(5, '');
  var detailOrder = DetailOrder();

  void updatePaymentData(List newPaymentData) {
    setState(() {
      paymentData = newPaymentData;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      paymentData = defaultPaymentMethod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: confirmOrderPage(),
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
            "Konfirmasi Pesanan",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget confirmOrderPage() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 32, left: 16, right: 16),
              child: GestureDetector(
                onTap: () async {
                  final result = await Navigator.push(
                      context,
                      PageTransition(
                          child: const AddressPage(isRebuild: true),
                          type: PageTransitionType.fade));
                  if (result != null) {
                    setState(() {
                      defaultAddress = result;
                    });
                  }
                  debugPrint('alamat tertekan');
                },
                child: Container(
                  decoration: homePageMenu.copyWith(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icons/home2.png',
                            width: 17,
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 290,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  savedAddress[defaultAddress][0],
                                  style: poppins.copyWith(fontSize: 15),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  savedAddress[defaultAddress][3],
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: poppins.copyWith(
                                      fontSize: 13, color: outline),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icons/timer.png',
                    width: 17,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Estimasi waktu pengiriman : 30 menit (4 km)',
                    style: poppins.copyWith(fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
              child: Container(
                decoration: homePageMenu.copyWith(
                  borderRadius: BorderRadius.circular(28),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 33, bottom: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pesanan mu',
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          child: const MenubyCat(
                                              selectedCat: 'Appetizer'),
                                          type: PageTransitionType.fade));
                                },
                                child: Text(
                                  '+Tambah pesanan',
                                  style: poppins.copyWith(
                                      color: primary1, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((BuildContext context, index) {
                        return listOrderMaker(index);
                      }),
                    )),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 11, top: 14),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Rp xxxxx',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Ongkir',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Text(
                                  '   xxxxx',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Biaya lain-lain',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Text(
                                  '   xxxxx',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        )),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 39, top: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Pembayaran',
                            style: poppins.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          Text(
                            'Rp xxxxx',
                            style: poppins.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: primary4),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              child: GestureDetector(
                onTap: () async {
                  final result = await Navigator.push(
                      context,
                      PageTransition(
                          child: const PaymentMethod(),
                          type: PageTransitionType.fade));
                  if (result != null) {
                    setState(() {
                      paymentData = result;
                    });
                  }
                  debugPrint('Metode pembayaran tertekan');
                },
                child: Container(
                  decoration: homePageMenu.copyWith(
                      borderRadius: BorderRadius.circular(14)),
                  child: Padding(
                    padding: const EdgeInsets.all(23),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          paymentData.isEmpty
                              ? 'Metode Pembayaran'
                              : paymentData[1],
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: paymentData.isEmpty
                                  ? Colors.black
                                  : primary4),
                        ),
                        Image.asset(
                          'assets/images/icons/arrow.png',
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 23),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Optional',

                  style: poppins.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: outline),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: checkBoxVal,
                    checkColor:
                        primary2, // warna tanda centang saat checkbox aktif
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return primary4;
                        }
                        return surface;
                      },
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    side: BorderSide.none,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxVal = newValue!;
                      });
                    },
                  ),
                  Text(
                    'Self Pick Up / Ambil sendiri',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: outline),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 31, horizontal: 31),
              child: GestureDetector(
                onTap: () {
                  if (paymentData.isNotEmpty) {
                    debugPrint(detailOrder.notes.toString());
                    debugPrint(detailOrder.items.toString());
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const PaymentPage(),
                            type: PageTransitionType.fade));
                  }
                  debugPrint('Pesan Sekarang tertekan');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: paymentData.isEmpty ? surface : primary4,
                    borderRadius: BorderRadius.circular(37),
                  ),
                  width: 335,
                  height: 48,
                  child: Center(
                    child: Text(
                      'Pesan Sekarang',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: paymentData.isEmpty ? outline : Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }

  Widget listOrderMaker(index) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 18),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Kentang Goreng',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () async {
                      final result =
                          await addNote(context, detailOrder.notes[index]);
                      if (result != null) {
                        setState(() {
                          detailOrder.notes[index] = result;
                        });
                      }
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/edit.png',
                          width: 8,
                          color: primary1,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Catatan',
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: primary1),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Rp 34.000',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: primary4),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 217,
                    height: 45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Catatan: ',
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: outline)),
                                TextSpan(
                                    text: detailOrder.notes[index],
                                    style: poppins.copyWith(color: outline)),
                              ],
                            ))
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        detailOrder.items[index] -= 1;
                      });
                      debugPrint('decrement tertekan');
                    },
                    child: Image.asset(
                      'assets/images/icons/decrement.png',
                      width: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    detailOrder.items[index].toString(),
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        detailOrder.items[index] += 1;
                      });
                      debugPrint('increment tertekan');
                    },
                    child: Image.asset(
                      'assets/images/icons/increment.png',
                      width: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Divider(),
        )
      ],
    );
  }

  Future addNote(context, notes) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: primary2,
        isScrollControlled: true,
        showDragHandle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(56)),
        ),
        builder: ((context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 618,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 29, top: 29),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Catatan Pesanan',
                            style: poppins.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Tambah catatan pesananmu disini ya, agar kami tahu apa yang kamu perlukan',
                            style:
                                poppins.copyWith(fontSize: 14, color: surface),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 32, left: 20, right: 20),
                      child: TextFormField(
                        controller: inputUserNote,
                        style: poppins,
                        onTap: () {
                          inputUserNote.text = notes;
                        },
                        decoration: userInputNote.copyWith(
                          hintText: 'Contoh: Banyakin porsinya bang, hehe',
                          hintStyle: poppins.copyWith(color: Colors.black45),
                        ),
                        maxLines: 6,
                        maxLength: 200,
                        buildCounter: (BuildContext context,
                            {int? currentLength,
                            int? maxLength,
                            bool? isFocused}) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '$currentLength/$maxLength',
                              style: poppins.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: surface,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 111),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context, inputUserNote.text);
                            debugPrint('Simapn tertekan');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary4,
                              borderRadius: BorderRadius.circular(37),
                            ),
                            width: 335,
                            height: 48,
                            child: Center(
                              child: Text(
                                'Simpan',
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: primary2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        })).whenComplete(() {
      inputUserNote.clear();
    });
  }
}
