// Container(
//           decoration: BoxDecoration(
//             color: primary2,
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 spreadRadius: 5,
//                 blurRadius: 10,
//               ),
//             ],
//           ),
//           padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Expanded(
//                 child: TextField(
//                   style: poppins.copyWith(fontSize: 13),
//                   controller: userQuestion,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: moreBright,
//                     enabledBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(42)),
//                       borderSide:
//                           BorderSide(width: 0, color: Colors.transparent),
//                     ),
//                     focusedBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(42)),
//                       borderSide:
//                           BorderSide(width: 0, color: Colors.transparent),
//                     ),
//                     hintText: 'Ketik pesan...',
//                     hintStyle: poppins.copyWith(fontSize: 13, color: outline),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 15),
//               GestureDetector(
//                 onTap: () {
//                   debugPrint('send!');
//                   if (userQuestion.text.isNotEmpty) {
//                     chatbot.askGPT(context, userQuestion.text);
//                     userQuestion.clear();
//                   }
//                 },
//                 child: Image.asset(
//                   'assets/images/icons/send.png',
//                   width: 24,
//                 ),
//               )
//             ],
//           ),
//         )