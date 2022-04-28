import 'package:flutter/material.dart';
import 'package:magic_cofee/domain/models/coffee.dart';
import 'package:magic_cofee/presentation/screens/login_screen.dart';
import 'package:magic_cofee/presentation/screens/menu_screen.dart';
import 'package:magic_cofee/presentation/screens/onboarding_screen.dart';
import 'package:magic_cofee/presentation/screens/order_screen.dart';

import '../../utils/strings.dart';
import '../screens/home_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );

      case orderScreen:
        return MaterialPageRoute(
          builder: (_) => OrderScreen(
              coffee: Coffee(name: "Late", photo: "assets/raf.png")),
        );

      case menuScreen:
        return MaterialPageRoute(
          builder: (_) => const MenuScreen(),
        );

      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return null;
    }
  }
}
