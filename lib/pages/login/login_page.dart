import 'package:capstone_restaurant/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final CarouselController carouselController = CarouselController();
  final TextEditingController emailInputLogin = TextEditingController();
  final TextEditingController passwordInputLogin = TextEditingController();

  final TextEditingController nameInputSignin = TextEditingController();
  final TextEditingController emailInputSignin = TextEditingController();
  final TextEditingController passwordInputSignin = TextEditingController();
  final TextEditingController passwordRefaceInputSignin =
      TextEditingController();
  int currentCarouselIndex = 0;
  bool toLoginForm = false;
  bool showLoginForm = true;
  bool hidePasswordLogin = true;
  bool hidePasswordSignin = true;
  bool hidePasswordRefaceSignin = true;

  @override
  Widget build(BuildContext context) {
    if (toLoginForm) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 44, right: 44),
                child: Container(
                  height: 432,
                  width: 288,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 4),
                          blurRadius: 15,
                          spreadRadius: 0,
                        )
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 48),
                        child: Container(
                          height: 23,
                          width: 206,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: primary3, width: 1),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showLoginForm = true;
                                  });
                                  debugPrint('login tertekan');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        showLoginForm ? primary3 : Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: 102,
                                  height: 23,
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: showLoginForm
                                              ? Colors.white
                                              : primary3),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showLoginForm = false;
                                  });
                                  debugPrint(' sign up tertekan');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        showLoginForm ? Colors.white : primary3,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: 102,
                                  height: 23,
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: showLoginForm
                                              ? primary3
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 52),
                      showLoginForm ? loginForm() : signUpForm()
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 90),
              GestureDetector(
                onTap: () {
                  debugPrint('tertekan');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: primary3,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 189,
                  height: 52,
                  child: Center(
                    child: Text(
                      showLoginForm ? 'Login' : 'Sign Up',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: [
                  greetingsmaker('Order your food',
                      'Now you can  order food any time\nright from your mobile'),
                  greetingsmaker('Get Your\nFast food Delivery with us',
                      'The standard chunk of used since the food\n is find make reproduced below  '),
                  greetingsmaker('Fast delivery to\nyour place',
                      'Fast delivery to your home, office\nand whwrever you are.'),
                ],
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 470,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentCarouselIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  if (currentCarouselIndex == 2) {
                    setState(() {
                      toLoginForm = true;
                    });
                  } else {
                    carouselController.nextPage(curve: Curves.easeOutCubic);
                  }
                  debugPrint('tertekan');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: primary3,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 189,
                  height: 52,
                  child: Center(
                    child: Text(
                      currentCarouselIndex == 2 ? 'Done' : 'Next',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Center(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: currentCarouselIndex,
                  decorator: DotsDecorator(
                    color: primary3,
                    activeColor: primary1,
                    activeSize: const Size(10, 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget greetingsmaker(title, subtitle) {
    return Center(
        child: Column(children: [
      Container(
        width: 308,
        height: 308,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Menentukan bentuk lingkaran
          color: primary3, // Warna latar belakang lingkaran
        ),
      ),
      const SizedBox(height: 25),
      Text(
        title,
        style: poppins.copyWith(fontWeight: FontWeight.w700, fontSize: 20),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 25),
      Text(
        subtitle,
        style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 12),
        textAlign: TextAlign.center,
      )
    ]));
  }

  Widget loginForm() {
    return SizedBox(
      width: 192,
      // height: 56,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          formMaker('Email or phone number', 'Input Email', emailInputLogin),
          const SizedBox(height: 21),
          passwordFormMaker('Password', 'Input Password', passwordInputLogin,
              hidePasswordLogin)
        ],
      ),
    );
  }

  Widget signUpForm() {
    return SizedBox(
      width: 192,
      // height: 56,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          formMaker('Full Name', 'Input Full Name', nameInputSignin),
          const SizedBox(height: 12),
          formMaker('Email or phone number', 'Input Email', emailInputSignin),
          const SizedBox(height: 12),
          passwordFormMaker('Password', 'Input Password', passwordInputSignin,
              hidePasswordSignin),
          const SizedBox(height: 12),
          passwordFormMaker('Reface Password', 'Retype Password',
              passwordRefaceInputSignin, hidePasswordRefaceSignin),
        ],
      ),
    );
  }

  Widget formMaker(title, label, controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 12)),
        const SizedBox(height: 8),
        SizedBox(
          height: 34,
          child: TextFormField(
            // cursorColor: itsYellowStatic,
            controller: controller,
            style: poppins.copyWith(fontSize: 12),
            decoration: loginTheme.copyWith(
              labelText: label,
              labelStyle:
                  poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget passwordFormMaker(title, label, controller, obscurer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 12)),
        const SizedBox(height: 8),
        SizedBox(
          height: 34,
          child: TextFormField(
            // cursorColor: itsYellowStatic,
            obscureText: hidePasswordRefaceSignin,
            controller: controller,
            style: poppins.copyWith(fontSize: 12),
            decoration: loginTheme.copyWith(
                labelText: label,
                labelStyle:
                    poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 12),
                suffixIcon: IconButton(
                    icon: Icon(
                      hidePasswordRefaceSignin
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 19,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePasswordRefaceSignin = !hidePasswordRefaceSignin;
                      });
                    })),
          ),
        ),
      ],
    );
  }
}
