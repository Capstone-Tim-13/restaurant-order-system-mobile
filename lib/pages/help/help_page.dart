import 'package:capstone_restaurant/logic/data_api_handler.dart';
import 'package:capstone_restaurant/logic/help/help_logic.dart';
import 'package:capstone_restaurant/pages/home/home.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class HelpPage extends StatefulWidget {
  final bool route;
  const HelpPage({super.key, required this.route});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  TextEditingController userQuestion = TextEditingController();

  @override
  void initState() {
    super.initState();
    final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);
    menuProvider.getMenuAll();
    // print('menu: ${menuProvider.getMenu}');
  }

  @override
  void dispose() {
    userQuestion.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        body: helpPage(),
      ),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: GestureDetector(
        onTap: () {
          // Navigator.pushReplacementNamed(context, '/home');
          Navigator.pop(context);
        },
        child: Image.asset('assets/images/icons/backButton.png'),
      ),
    );
  }

  Widget helpPage() {
    final chatbot = Provider.of<ChatbotHandler>(context, listen: false);
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: primary2,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
          ),
          padding: const EdgeInsets.only(top: 24, bottom: 14, left: 14),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  widget.route
                      ? Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: const Home(setIdx: 0),
                              type: PageTransitionType.fade))
                      : Navigator.pop(context);
                  // Navigator.pushReplacementNamed(context, '/home');
                  // Navigator.pop(context);
                },
                child: Image.asset('assets/images/icons/backButton.png'),
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/home/helpPage/csAvatar.png',
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Customer Service',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(width: 8),
                      Image.asset(
                        'assets/images/icons/tick.png',
                        width: 20,
                      )
                    ],
                  ),
                  Text(
                    'Aktif',
                    style: poppins.copyWith(color: outline, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
        qnaWindow(context),
        Container(
          decoration: BoxDecoration(
            color: primary2,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  // margin: const EdgeInsets.only(left: 25),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: moreBright,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    style: poppins.copyWith(fontSize: 13),
                    controller: userQuestion,
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan...',
                      hintStyle: poppins.copyWith(fontSize: 13, color: outline),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  debugPrint('send!');
                  if (userQuestion.text.isNotEmpty) {
                    chatbot.askGPT(context, userQuestion.text);
                    userQuestion.clear();
                  }
                },
                child: Image.asset(
                  'assets/images/icons/send.png',
                  width: 24,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}