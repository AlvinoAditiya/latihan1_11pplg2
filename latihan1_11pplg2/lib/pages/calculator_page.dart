import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/calculator_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:latihan1_11pplg2/widget/custom_button.dart';
import 'package:latihan1_11pplg2/widget/custom_textfiled.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Calculator"),),
      body: Column(
        children: [
            CustomTextfiled(controller: calculatorController.txtAngka1, label: "input angka 1",
             labelColor: Colors.green, pass: false, isNumber: true,),
            CustomTextfiled(controller: calculatorController.txtAngka2, label: "input angka 2",
             labelColor: Colors.green, pass: false, isNumber: true,),

            Row(children: [
              CustomButton(myText: "+", myTextColor: Colors.black, onPressed: (){
                calculatorController.tambah();
              },),
              CustomButton(myText: "-", myTextColor: Colors.black, onPressed: (){
                calculatorController.kurang();
              },)
            ],),
            Row(children: [
              CustomButton(myText: "x", myTextColor: Colors.black, onPressed: (){
                calculatorController.kali();
              },),
              CustomButton(myText: "/", myTextColor: Colors.black, onPressed: (){
                calculatorController.bagi();
              },)
            ],),
            Obx((){
              return Text ("Hasil "+calculatorController.textHasil.value);
            },),
            CustomButton(
            myText: "My team", 
            myTextColor: Colors.green, 
            onPressed: (){
              // calculatorController.txtAngka1.clear();
              // calculatorController.txtAngka2.clear();
              // calculatorController.textHasil.value= "";
              Get.toNamed(AppRoutes.footballPage);
            },
           ),
      ],)

      
    );
  }
}