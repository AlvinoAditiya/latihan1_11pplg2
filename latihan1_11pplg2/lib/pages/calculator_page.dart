import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/calculator_controller.dart';
import 'package:latihan1_11pplg2/widget/custom_button.dart';
import 'package:latihan1_11pplg2/widget/custom_textfiled.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatoController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Calculator"),),
      body: Column(
        children: [
            CustomTextfiled(controller: calculatoController.txtAngka1, label: "input angka 1",
             labelColor: Colors.green, pass: false, isNumber: true,),
            CustomTextfiled(controller: calculatoController.txtAngka2, label: "input angka 2",
             labelColor: Colors.green, pass: false, isNumber: true,),

            Row(children: [
              CustomButton(myText: "+", myTextColor: Colors.black, onPressed: (){
                calculatoController.tambah();
              },),
              CustomButton(myText: "-", myTextColor: Colors.black, onPressed: (){
                calculatoController.kurang();
              },)
            ],),
            Row(children: [
              CustomButton(myText: "x", myTextColor: Colors.black, onPressed: (){
                calculatoController.kali();
              },),
              CustomButton(myText: "/", myTextColor: Colors.black, onPressed: (){
                calculatoController.bagi();
              },)
            ],),
            Obx((){
              return Text ("Hasil "+calculatoController.textHasil.value);
            },),
            CustomButton(
            myText: "Clear", 
            myTextColor: Colors.green, 
            onPressed: (){
              calculatoController.txtAngka1.clear();
              calculatoController.txtAngka2.clear();
              calculatoController.textHasil.value= "";
            },
           ),
      ],)

      
    );
  }
}