import 'package:flutter/material.dart';
import 'package:practice_two/models/models.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRouter {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'home',
        screen: const HomeScreen()),
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
        screen: const AlertScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
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
