//  GestureDetector(
//             onTap: () {
//               if (widget.editMode) {
//                 List updatedData = [];
//                 if (detailLokasi.text.isEmpty) {
//                   updatedData.add(detailLokasi.text);
//                 }
//                 if (detailLokasi.text.isNotEmpty) {
//                   updatedData.add(widget.address);
//                 }
//                 if (namaLengkap.text.isEmpty) {
//                   updatedData.add(namaLengkap.text);
//                 }
//                 if (namaLengkap.text.isNotEmpty) {
//                   updatedData.add(widget.name);
//                 }
//                 if (noHp.text.isEmpty) {
//                   updatedData.add(noHp.text);
//                 }
//                 if (noHp.text.isNotEmpty) {
//                   updatedData.add(widget.phone);
//                 }
//                 if (tag.text.isEmpty) {
//                   updatedData.add(tag.text);
//                 }
//                 if (tag.text.isNotEmpty) {
//                   updatedData.add(widget.tag);
//                 }
//                 if (patokan.text.isEmpty) {
//                   updatedData.add(patokan.text);
//                 }
//                 if (patokan.text.isNotEmpty) {
//                   updatedData.add(widget.note);
//                 }
//                 print(updatedData);
//                 savedAddress[widget.idx] = updatedData;
//                 Navigator.pop(context, savedAddress);
//                 debugPrint('Alamat berhasil diupdate');
//               } else {
//                 if (detailLokasi.text.isNotEmpty &&
//                     namaLengkap.text.isNotEmpty &&
//                     noHp.text.isNotEmpty &&
//                     tag.text.isNotEmpty &&
//                     patokan.text.isNotEmpty) {
//                   savedAddress.add([
//                     detailLokasi.text,
//                     namaLengkap.text,
//                     noHp.text,
//                     tag.text,
//                     patokan.text
//                   ]);

//                   if (isMain) {
//                     setState(() {
//                       defaultAddress = savedAddress.length - 1;
//                       debugPrint(defaultAddress.toString());
//                     });
//                   }
//                   showSnackBar(context, 'New address added.');
//                   Navigator.pop(context, savedAddress);
//                   debugPrint('Konfirmasi alamat');
//                 } else {
//                   // Tampilkan AlertDialog jika ada field yang kosong
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         content: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Center(
//                               child: Text(
//                                 'Mohon isi semua field.',
//                                 style: poppins.copyWith(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Align(
//                               alignment: Alignment.bottomRight,
//                               child: TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text(
//                                   'OK',
//                                   style: poppins,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                   debugPrint('Isi semua field sebelum konfirmasi alamat');
//                 }
//               }
//             },
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 80),
//               decoration: BoxDecoration(
//                 color: primary4,
//                 borderRadius: BorderRadius.circular(37),
//               ),
//               width: 335,
//               height: 48,
//               child: Center(
//                 child: Text(
//                   widget.editMode ? 'Edit alamat' : 'Konfirmasi alamat',
//                   style: poppins.copyWith(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 16,
//                     color: primary2,
//                   ),
//                 ),
//               ),
//             ),
//           ),