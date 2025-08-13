import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/models/player_model.dart';

class FootballplayerController extends GetxController{
  var players = <Player>[
    Player(nama: "Luka Modrić", posisi: "center midfielder", nomor: "10", image: "assets/image/modric.jpeg"), 
    Player(nama: "Ronaldo", posisi: "striker", nomor: "7", image: "assets/image/ronaldo.jpeg"),
    Player(nama: "Pepe", posisi: "center back ", nomor: "3",image: "assets/image/pepe.jpeg"),
    Player(nama: "Ramos", posisi: "center back ", nomor: "4", image: "assets/image/ramos.jpeg"), 
    Player(nama: "Ozil", posisi: "attacking midfielder", nomor: "10", image: "assets/image/ozil.jpeg"),
  ].obs;
    

  void updatePlayer(int index, String nama, String posisi, String nomor, String image) {
    players[index].nama = nama;
    players[index].posisi = posisi;
    players[index].nomor = nomor;
    players[index].image = image;
    players.refresh();
  }
}