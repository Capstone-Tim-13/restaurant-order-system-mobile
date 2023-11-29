import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      backgroundColor: const Color(0xFF783525),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 35),
              child: Text(
                'Kirim feedback anda kepada kami!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35, top: 5),
              child: Text(
                'Bagikan masukkan mu tentang aplikasi ini ya!                                                                        '
                'Untuk memberikan support terbaik bagi kami.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 625,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75.0),
                  topRight: Radius.circular(75.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 60.0,
                        left: 35.0,
                      ),
                      child: Text(
                        'Bagaimana pengalaman mu?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 130.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Image.asset(
                            'assets/images/Star.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7, right: 7),
                      child: Column(
                        children: [
                          Container(
                            width: 450,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 10.0,
                                      left: 10.0,
                                    ),
                                    child: Text(
                                      'Deskripsikan pengalaman mu?',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.0,
                                    left: 40.0,
                                  ),
                                  child: Text(
                                    '0/200',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 100),
                          ElevatedButton(
                            onPressed: () {
                              _showSuccessDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF783525),
                              minimumSize: const Size(350, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                            ),
                            child: const Text(
                              'Kirim ulasan mu',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 249, 249, 249),
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget showAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    scrolledUnderElevation: 0,
    backgroundColor: const Color(0xFF783525),
    title: DefaultTextStyle(
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/images/Leftcircle.png'),
          ),
          const SizedBox(width: 8),
          const Text(
            'Feedback',
          ),
        ],
      ),
    ),
  );
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding:
            const EdgeInsets.only(top: 10, bottom: 20, left: 100, right: 100),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/Thanks.png',
              height: 200,
              width: 200,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                '''Terimakasih ya,
Sudah memberikan
feedback!''',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    },
  );
}
