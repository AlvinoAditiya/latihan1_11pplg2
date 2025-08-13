import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/football_player_controller.dart';

class EditFootballPlayerController extends GetxController {
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();
  final imageController = TextEditingController();

  final footballplayerController = Get.find<FootballplayerController>();

  void loadPlayerData(int index) {
    final player = footballplayerController.players[index];
    nameController.text = player.nama;
    positionController.text = player.posisi;
    numberController.text = player.nomor;
   
  }

  void saveChanges(int index) {
    footballplayerController.updatePlayer(
      index,
      nameController.text,
      positionController.text,
      numberController.text,
      imageController.text,
    );
    Get.back();
  }
}