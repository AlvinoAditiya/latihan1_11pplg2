import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:latihan1_11pplg2/pages/bottom_nav_page.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages{
  static final pages = [
  
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: ()=> Footballplayer()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()), // index diisi saat navigasi
    GetPage(name: AppRoutes.bottomNavPage, page: () => BottomNavPage(),),
    GetPage(name: AppRoutes.profilePage, page: () => ProfilePage(),),
  ];
}