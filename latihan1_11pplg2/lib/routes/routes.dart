import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihan1_11pplg2/login_page.dart';
import 'package:latihan1_11pplg2/pages/bottom_nav_page.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';

class AppRoutes{
  static const String bottomNavPage = "/bottomnavpage";
  static const String calculatorPage = "/calculatorpage";
  static const String footballPage = "/footballpage";
  static const String editPlayerPage = "/editplayerpage";
  static const String profilePage = "/profilepage";

  static List<GetPage> routes = [
    GetPage(
      name: bottomNavPage,
      page: () => const BottomNavPage(),
    ),
    GetPage(
      name: calculatorPage,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: editPlayerPage,
      page: () => EditPlayerPage(),
    ),
    GetPage(
      name: profilePage,
      page: () => ProfilePage(),
    ),
  ];
}