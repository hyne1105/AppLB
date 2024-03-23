import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Mua Sắm Ngay",
          body: "Hãy nhanh tay mua ngay thứ bạn yêu thích",
          image: Image.asset(
            "images/splash1.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Khuyến Mãi Lớn",
          body: "Hãy nhanh tay mua ngay thứ bạn yêu thích",
          image: Image.asset(
            "images/splash2.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Miễn Phí Vận Chuyển",
          body: "Hãy nhanh tay mua ngay thứ bạn yêu thích",
          image: Image.asset(
            "images/splash3.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text(
                "Mua Ngay",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(55),
                backgroundColor: Color(0xFFC8273E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        "Trở lại",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFC8273E)),
      ),
      next: Text(
        "Tiếp tục",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFC8273E)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xFFC8273E),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
