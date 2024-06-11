
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/widgets/buttons.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Kendaraan Anda Mogok?',
    'Daftar Dan Nikmati Kemudahannya',
    'Mulai Bersama'
  ];

  List<String> subtitles = [
    'Panggil Mekanik Aja!',
    'Kami Menyediakan Layanan Untuk Membantu Anda Dalam Perjalanan',
    'Kami Akan Menservis Kendaraan Anda Tanpa Harus Datang Ke Bengkel'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.max,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reason) => {
                      setState(() {
                        currentIndex = index;
                      })
                    }),
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 38 : 50,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Daftar Sekarang',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-up', (route) => false);
                              },
                            ),
                            // SizedBox(
                            //   width: double.infinity,
                            //   height: 50,
                            //   child: TextButton(
                            //     onPressed: () {
                            //       Navigator.pushNamed(context, '/sign-up');
                            //     },
                            //     style: TextButton.styleFrom(
                            //       backgroundColor: purpleColor,
                            //       shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(56),
                            //       ),
                            //     ),
                            //     child: Text(
                            //       'Get Started',
                            //       style: whitekTextStyle.copyWith(
                            //           fontSize: 16, fontWeight: semiBold),
                            //     ),
                            //   ),
                            // ),
                            // CustomFilledButton(
                            //   title: 'Get Started',
                            //   onPressed: () {
                            //     Navigator.pushNamed(context, '/sign-up');
                            //   },
                            // ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextButton(
                                title: 'Masuk',
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/sign-in', (route) => false);
                                })
                            // SizedBox(
                            //   width: double.infinity,
                            //   height: 24,
                            //   child: TextButton(
                            //     onPressed: () {
                            //       Navigator.pushNamed(context, '/sign-in');
                            //       // Navigator.push(
                            //       //   context,
                            //       //   MaterialPageRoute(
                            //       //       builder: (context) =>
                            //       //           const SignInPage()),
                            //       // );
                            //     },
                            //     style: TextButton.styleFrom(
                            //       padding: EdgeInsets.zero,
                            //     ),
                            //     child: Text(
                            //       'Sign In',
                            //       style: greyTextStyle.copyWith(
                            //         fontSize: 16,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              width: 150,
                              title: 'Lanjutkan',
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                            // SizedBox(
                            //   width: 150,
                            //   height: 50,
                            //   child: TextButton(
                            //     onPressed: () {
                            //       carouselController.nextPage();
                            //     },
                            //     style: TextButton.styleFrom(
                            //       backgroundColor: purpleColor,
                            //       shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(56),
                            //       ),
                            //     ),
                            //     child: Text(
                            //       'Continue',
                            //       style: whitekTextStyle.copyWith(
                            //           fontSize: 16, fontWeight: semiBold),
                            //     ),
                            //   ),
                            // ),
                          ],
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
