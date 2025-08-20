import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:latihan1_11pplg2/controller/bottom_nav_controller.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    CalculatorPage(),
    Footballplayer(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[navController.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navController.selectedIndex.value,
            onTap: (index) => navController.changeTab(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: 'Calculator',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: 'Players',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ));
  }
}