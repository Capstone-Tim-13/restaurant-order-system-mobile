// import 'package:capstone_restaurant/data.dart';
// import 'package:capstone_restaurant/style.dart';
// import 'package:flutter/material.dart';

// class PaymentMethod extends StatefulWidget {
//   const PaymentMethod({super.key});

//   @override
//   State<PaymentMethod> createState() => _PaymentMethodState();
// }

// class _PaymentMethodState extends State<PaymentMethod> {
//   String selectedPaymentMethod = '';
//   String paymentLogo = '';
//   List data = [];

//   @override
//   void initState() {
//     super.initState();
//     if (defaultPaymentMethod.isNotEmpty) {
//       selectedPaymentMethod = defaultPaymentMethod[1];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: showAppBar(),
//       body: paymentMethodPage(),
//     );
//   }

//   showAppBar() {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       scrolledUnderElevation: 0,
//       title: Row(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Image.asset('assets/images/icons/backButton.png'),
//           ),
//           const SizedBox(width: 8),
//           Text(
//             "Metode Pembayaran",
//             style: poppins.copyWith(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 18), // Ganti warna teks "Lupa Password"
//           ),
//         ],
//       ),
//     );
//   }

//   Widget paymentMethodPage() {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 20, left: 13, right: 16),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Pilih metode pembayaran',
//                     style: poppins.copyWith(
//                         fontWeight: FontWeight.w500, fontSize: 15),
//                   ),
//                   const SizedBox(height: 14),
//                   Text(
//                     'E-Wallet',
//                     style: poppins.copyWith(color: outline, fontSize: 15),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//               child: ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             padding: EdgeInsets.zero,
//             itemCount: 11,
//             itemBuilder: ((BuildContext context, index) {
//               return paymentCheckboxMaker(
//                   'paymentEWallet[index][0]', 'paymentEWallet[index][1]');
//             }),
//           )),
//           Container(
//             height: 24,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(color: Color(0xFFF1F1F1)),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 24, left: 13, right: 16),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Bank',
//                 style: poppins.copyWith(color: outline, fontSize: 15),
//               ),
//             ),
//           ),
//           SizedBox(
//               child: ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             padding: EdgeInsets.zero,
//             itemCount: 11,
//             itemBuilder: ((BuildContext context, index) {
//               return paymentCheckboxMaker(
//                   'paymentBank[index][0]', 'paymentBank[index][1]');
//             }),
//           )),
//           Container(
//             height: 24,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(color: Color(0xFFF1F1F1)),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 44, bottom: 67),
//             child: GestureDetector(
//               onTap: () {
//                 defaultPaymentMethod = data;
//                 Navigator.pop(context, defaultPaymentMethod);
//                 debugPrint('pembayaran dengan $selectedPaymentMethod');
//                 debugPrint('data pembayaran $defaultPaymentMethod');
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: primary4,
//                   borderRadius: BorderRadius.circular(37),
//                 ),
//                 width: 335,
//                 height: 48,
//                 child: Center(
//                   child: Text(
//                     'Konfirmasi Pembayaran',
//                     style: poppins.copyWith(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 16,
//                         color: primary2),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget paymentCheckboxMaker(img, paymentMethod) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 26, left: 13, right: 16),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedPaymentMethod = paymentMethod;
//                           data = [img, paymentMethod];
//                         });
//                         debugPrint('$paymentMethod tertekan');
//                         debugPrint(data.toString());
//                       },
//                       child: Image.asset(
//                         'assets/images/icons/checkCircle.png',
//                         width: 21,
//                         color: selectedPaymentMethod == paymentMethod
//                             // defaultPaymentMethod[1] != null &&
//                             //         defaultPaymentMethod[1] == paymentMethod
//                             ? primary4
//                             : null,
//                       )),
//                   const SizedBox(width: 15),
//                   Image.asset(img, width: 65),
//                   const SizedBox(width: 25),
//                   Text(
//                     paymentMethod,
//                     style: poppins.copyWith(fontSize: 15),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//             ],
//           ),
//         ),
//         const Divider(
//           height: 0,
//         )
//       ],
//     );
//   }
// }
