import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class AppRating extends StatefulWidget {
  const AppRating({super.key});

  @override
  State<AppRating> createState() => _AppRatingState();
}

class _AppRatingState extends State<AppRating> {
  TextEditingController userFeedback = TextEditingController();
  List<bool> ratings = [false, false, false, false, false];
  int userRating = 0;
  int wordCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primary4,
      appBar: showAppBar(),
      body: showAppRating(),
    );
  }

  showAppBar() {
    return AppBar(
      backgroundColor: primary4,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/icons/backButton.png',
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "Feedback",
            style: poppins.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget showAppRating() {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kirim feedback anda kepada kami!',
                  style: poppins.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Bagikan masukkan mu tentang aplikasi ini ya!\nUntuk memberikan support terbaik bagi kami.',
                  style: poppins.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 37),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(56),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 46, left: 26, bottom: 18),
                  child: Text(
                    'Bagaimana pengalaman mu?',
                    style: poppins.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Row(
                    children: List.generate(5, (index) {
                      return Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < 5; i++) {
                                  ratings[i] = i <= index;
                                }
                              });
                              userRating = index + 1;
                              debugPrint(userRating.toString());
                            },
                            child: Image.asset(
                              'assets/images/icons/star.png',
                              width: 37,
                              color: ratings[index] ? tertiary3 : surface,
                            ),
                          ));
                    }),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: userFeedback,
                          style: poppins,
                          onChanged: (value) {
                            updateWordCount(value);
                          },
                          decoration: userInputNote.copyWith(
                            hintText: 'Contoh: Keasinan bang',
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
                        const SizedBox(height: 150),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              showSuccessDialog(context);
                              Future.delayed(const Duration(seconds: 1), () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              });
                              debugPrint('Kirim ulasan mu tertekan');
                              debugPrint(
                                  'user rating: $userRating\nuser feedback: ${userFeedback.text}');
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 88),
                              decoration: BoxDecoration(
                                color: primary4,
                                borderRadius: BorderRadius.circular(37),
                              ),
                              width: 335,
                              height: 48,
                              child: Center(
                                child: Text(
                                  'Kirim ulasan mu',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: primary2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void updateWordCount(String text) {
    String trimmedText = text.trim();
    List<String> words = trimmedText.split(RegExp(r'\s+'));
    int count = words.length;
    setState(() {
      wordCount = count;
    });
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/icons/thankyou.png',
              width: 170,
            ),
            Text(
              'Terimakasih ya,\nSudah memberikan feedback!',
              style: poppins.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    },
  );
}
