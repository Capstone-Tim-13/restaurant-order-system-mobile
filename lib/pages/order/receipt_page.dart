import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class ReceiptPage extends StatefulWidget {
  final List data;
  const ReceiptPage({super.key, required this.data});

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: showReceipt(),
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
            "History Pesanan",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget showReceipt() {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 19),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dikirim ke alamat',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    widget.data[3],
                    style: poppins.copyWith(fontSize: 14, color: outline),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/icons/home2.png',
                        color: outline,
                        width: 19,
                      ),
                      Text(
                        widget.data[6],
                        style: poppins.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: outline),
                      )
                    ],
                  ),
                  Text(
                    'Pesanan ke-${widget.data[7]}',
                    style: poppins.copyWith(fontSize: 14, color: outline),
                  )
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 35),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pesanan mu',
              style:
                  poppins.copyWith(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return showMyOrder(widget.data);
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 29, right: 44, bottom: 11, top: 19),
                    child: Column(
                      children: [
                        Wrap(
                          runSpacing: 3,
                          children: [
                            showPrice('Subtotal', 'Rp xxxxx'),
                            showPrice('Ongkir', '    xxxxx'),
                            showPrice('Biaya lain-lain', '   xxxxx'),
                            showPrice('Voucher Promo', '   xxxxx'),
                            showPrice('Diskon Ongkir', '   xxxxx'),
                          ],
                        ),
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 29, right: 29),
                  child: Divider(),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 29, right: 44, bottom: 76),
                    child: Column(
                      children: [
                        Wrap(
                          runSpacing: 3,
                          children: [
                            showPrice('Total Pembayaran', 'Rp xxxxx'),
                            showPrice('Pembayaran via BCA', 'Rp xxxxx'),
                          ],
                        ),
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    debugPrint('Download Bukti tertekan');
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
                        'Download Bukti',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 73)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget showMyOrder(data) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 205,
                      child: Text(
                        data[1],
                        style: poppins.copyWith(fontSize: 16),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      data[2],
                      style: poppins.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 205,
                  child: RichText(
                      maxLines: 2,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'catatan: ',
                          style: poppins.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: outline),
                        ),
                        TextSpan(
                          text: data[8],
                          style: poppins.copyWith(color: outline),
                        ),
                      ])),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 29, right: 29, top: 9),
            child: Divider(),
          )
        ],
      ),
    );
  }

  Widget showPrice(title, price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Text(
          price,
          style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ],
    );
  }
}
