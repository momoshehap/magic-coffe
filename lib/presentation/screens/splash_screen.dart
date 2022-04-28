import 'dart:async';

import 'package:flutter/material.dart';
import 'package:magic_cofee/presentation/screens/home_screen.dart';

// class SplashScreen1 extends StatefulWidget {
//   const SplashScreen1({Key? key}) : super(key: key);

//   @override
//   _SplashScreen1State createState() => _SplashScreen1State();
// }

// class _SplashScreen1State extends State<SplashScreen1> {
//   @override
//   Widget build(BuildContext c) {
//     return Scaffold(
//       body: Center(
//         child: OpenContainer(
//           closedBuilder: (_, openContainer) {
//             return const SizedBox(
//               height: 60,
//               width: 220,
//               child: Center(
//                 child: Text(
//                   'View  Animation',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             );
//           },
//           openColor: Colors.white,
//           closedElevation: 20,
//           closedShape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           transitionDuration: const Duration(milliseconds: 700),
//           openBuilder: (_, closeContainer) {
//             return const SplashScreen1Sub();
//           },
//         ),
//       ),
//     );
//   }
// }

class SplashScreen1Sub extends StatefulWidget {
  const SplashScreen1Sub({Key? key}) : super(key: key);

  @override
  _SplashScreen1SubState createState() => _SplashScreen1SubState();
}

class _SplashScreen1SubState extends State<SplashScreen1Sub>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _fontSize = 1.06;
      });
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 4), () {
      setState(() {
        Navigator.pushReplacement(context, PageTransition1(const HomeScreen()));
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
              image: AssetImage("assets/splashbackground.png"),
              fit: BoxFit.cover),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Column(
            children: [
              AnimatedContainer(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: _height / _fontSize),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: _textOpacity,
                child: const Text(
                  'magic coffe',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: _containerOpacity,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: _width,
                  width: _width,
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  child: Image.asset('assets/Vector.png')
                  //child: const Text('APP LOGO'),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTransition1 extends PageRouteBuilder {
  final Widget page;

  PageTransition1(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                child: page,
                axisAlignment: 0,
              ),
            );
          },
        );
}
