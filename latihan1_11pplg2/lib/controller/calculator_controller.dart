import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController{

  final txtAngka1 =  TextEditingController();
  final txtAngka2 =  TextEditingController();
  var textHasil = "".obs; // digunakan di dalam ui nya untuk merender/ mengupdate

  void tambah(){
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);
    

    int hasilJumlah = angka1+angka2;
    print("hasil jumlah" +hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }
  void kurang(){
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);
    

    int hasilKurang = angka1-angka2;
    print("hasil jumlah" +hasilKurang.toString());
    textHasil.value = hasilKurang.toString();
  }
  void kali(){
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);
    

    int hasilKali = angka1*angka2;
    print("hasil jumlah" +hasilKali.toString());
    textHasil.value = hasilKali.toString();
  }
  void bagi(){
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);
    

    double hasilBagi = angka1/angka2;
    print("hasil jumlah" +hasilBagi.toString());
    textHasil.value = hasilBagi.toString();
  }
}