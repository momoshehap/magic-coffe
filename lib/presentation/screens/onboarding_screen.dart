import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:magic_cofee/domain/models/onBoardingModel.dart';
import 'package:magic_cofee/presentation/screens/splash_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnBoardingModel> boarding = [
    OnBoardingModel(
        "assets/Vector.png", "Magic coffe", "Magic coffee on order."),
    OnBoardingModel(
        "assets/Vector.png", "Magic coffe", "Magic coffee on order."),
    OnBoardingModel(
        "assets/Vector.png", "Magic coffe", "Magic coffee on order."),
  ];

  var boardControler = PageController();

  bool isLast = false;
  bool isViewed = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen1Sub()),
                    (Route<dynamic> route) => false);
                isViewed = true;
              },
              child: Text("skip",
                  style: TextStyle(
                    color: HexColor("#324A59"),
                    fontFamily: "ReenieBeanie",
                    fontSize: 24,
                  ))),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: boardControler,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemBuilder: (context, index) =>
                  buildonBoardingItem(boarding[index]),
              itemCount: boarding.length,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SmoothPageIndicator(
                controller: boardControler,
                count: boarding.length,
                effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 4,
                  activeDotColor: HexColor("#324A59"),
                  spacing: 5,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  const Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (isLast == false) {
                        boardControler.nextPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn);
                      } else {
                        isViewed = true;

                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SplashScreen1Sub()),
                            (Route<dynamic> route) => false);
                      }
                    },
                    backgroundColor: HexColor("#324A59"),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildonBoardingItem(OnBoardingModel boarding) => Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: HexColor("#324A59"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          boarding.image,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        boarding.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "ReenieBeanie",
                          fontSize: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: double.minPositive,
                child: Column(
                  children: [
                    const Text(
                      "Feel like a barista!",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(boarding.body,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
