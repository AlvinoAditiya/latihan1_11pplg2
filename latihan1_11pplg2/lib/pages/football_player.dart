import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/football_player_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class Footballplayer extends StatelessWidget {
  Footballplayer({super.key});

  final FootballplayerController footballplayerController = Get.put(FootballplayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Man. United Players"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
          itemCount: footballplayerController.players.length,
          itemBuilder: (context, index) {
              final player = footballplayerController.players[index];
              return ListTile(


        
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.image),
                ),
                title: Text(player.nama),
                subtitle: Text("${player.posisi} - No. ${player.nomor}"),
                onTap: () {
                  Get.toNamed(AppRoutes.editPlayerPage, arguments: index);
                },
              );
            },
        )),
      ),
    );
  }
}