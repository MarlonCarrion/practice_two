import 'package:flutter/material.dart';
import 'package:practice_two/models/models.dart';
import 'package:practice_two/screens/input_screen.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRouter {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        name: 'Lista 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.link_off_sharp,
        name: 'Lista 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.airline_stops_rounded,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.abc,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animation',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        icon: Icons.input_outlined,
        name: 'Input',
        screen: const InputScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.input_outlined,
        name: 'Slider',
        screen: const SliderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen()
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
