// Ali, Alwin, Bima, Katarina, Rachel

import 'package:capstone_restaurant/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselController carouselController = CarouselController();
  int currentCarouselIndex = 0;
  bool showOnboarding = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showOnboarding ? onboardingPage() : intro(),
    );
  }

  Widget intro() {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login/onboardingBg.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 119),
                  Image.asset('assets/images/altaLogoW.png'),
                  const SizedBox(height: 119),
                  Text(
                    'Makanan siap disajikan untukmu',
                    style: poppins.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: primary2),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Dengan Alta-Resto, selalu ada makanan terbaik ada untukmu',
                    style: poppins.copyWith(fontSize: 14, color: primary3),
                  ),
                  const SizedBox(height: 47),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showOnboarding = true;
                      });
                      debugPrint('intro tertekan');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: primary2,
                        borderRadius: BorderRadius.circular(37),
                      ),
                      width: 335,
                      height: 48,
                      child: Center(
                        child: Text(
                          'Mulai',
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget onboardingPage() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: [
                    greetingsmaker(
                        'Welcome',
                        'Senang berkenalan dengan kamu. Kami senang kamu ada di sini, jadi ayo kita mulai!',
                        'assets/images/login/images1.png'),
                    greetingsmaker(
                        'All your favorites',
                        'Pesan dari restoran lokal terbaik dengan pengiriman mudah dan sesuai permintaan.',
                        'assets/images/login/images2.png'),
                    greetingsmaker(
                        'Delivery offers',
                        'Memberikan penawaran untuk dikirim ke tujuan mu masing-masing, sangat menghemat waktumu',
                        'assets/images/login/images3.png'),
                    greetingsmaker(
                        'Choose your food',
                        'Temukan jenis keinginan makananmu dengan mudah dan kamu akan mendapatkan pengiriman dalam berbagai macam.',
                        'assets/images/login/images4.png'),
                  ],
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentCarouselIndex = index;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: DotsIndicator(
                  dotsCount: 4,
                  position: currentCarouselIndex,
                  decorator: DotsDecorator(
                      color: outline,
                      size: const Size(6, 6),
                      activeColor: primary4,
                      activeSize: const Size(22, 6),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              const SizedBox(height: 49),
              GestureDetector(
                onTap: () {
                  if (currentCarouselIndex == 3) {
                    Navigator.pushNamed(context, '/login');
                  } else {
                    carouselController.nextPage(curve: Curves.easeOutCubic);
                  }
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
                      currentCarouselIndex == 3 ? 'Mulai' : 'Selanjutnya',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: primary2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Lewati',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: outline),
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ],
    );
  }

  Widget greetingsmaker(title, subtitle, image) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Image.asset(image),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            children: [
              Text(
                title,
                style:
                    poppins.copyWith(fontWeight: FontWeight.w700, fontSize: 32),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Text(
                subtitle,
                style:
                    poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                textAlign: TextAlign.center,
              )
            ],
          )),
    ]);
  }
}
