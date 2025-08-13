import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/football_player_controller.dart';

class EditPlayerPage extends StatelessWidget {
  final int index;
  EditPlayerPage({required this.index});
  
 final footballplayerController = Get.find<FootballplayerController>();


  final namaController = TextEditingController();
  final posisiController = TextEditingController();
  final nomorController = TextEditingController();
  final imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    final int index = Get.arguments as int;
    final player = footballplayerController.players[index];

    namaController.text = player.nama;
    posisiController.text = player.posisi;
    nomorController.text = player.nomor;
    imageController.text = player.image;

    return Scaffold(
      appBar: AppBar(title: Text("Edit Pemain")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
             // Tampilkan gambar (hanya baca)
            ClipOval(
              child: Image.asset(
                player.image,
                width: 320,
                height: 320,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: "Nama Pemain"),
            ),
            TextField(
              controller: posisiController,
              decoration: InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: nomorController,
              decoration: InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                footballplayerController.updatePlayer(
                  index,
                  namaController.text,
                  posisiController.text,
                  nomorController.text,
                  player.image,
                );
                Get.back();
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}