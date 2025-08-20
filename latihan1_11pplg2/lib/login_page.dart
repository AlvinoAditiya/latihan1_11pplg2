import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/register_page.dart';
import 'package:latihan1_11pplg2/widget/custom_button.dart';
import 'package:latihan1_11pplg2/widget/custom_textfiled.dart';
import 'package:latihan1_11pplg2/widget/my_input_field.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  String statusLogin = "loginstatus";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              "Welcome to our aplication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontFamily: 'Poppins',
              ),
            ), //font, warna, bold
            Text("please fill username and password bellow"),

            // image dari resource
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                width: 100,
                child: Image.asset('assets/download.png'),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: CustomTextfiled(controller: txtUsername, label: "Username",
               labelColor: Colors.blue, pass: false, isNumber: false,)
            ), // label / hint, border
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10,),
              child: CustomTextfiled(controller: txtPassword, label: "Password", 
              labelColor: Colors.green, pass: true, isNumber: false,)
            ), // label / hint, border, tambahkan hidden character


            Container(
              width: double.infinity,
              child: CustomButton(myText: "Login", myTextColor: Colors.blue, onPressed: () {
                  if(txtUsername.text == "admin" && txtPassword.text == "admin"){
                  setState(() {
                    statusLogin = "Sukses Login";
                  });
                }
                else{
                  setState(() {
                    statusLogin = "Gagal Login";
                  });
                }
                })),
              
            

      

          //   Container(
          //     width: double.infinity,
          //     child: ElevatedButton(onPressed: () {
          //       if(txtUsername.text == "admin" && txtPassword.text == "admin"){
          //         setState(() {
          //           statusLogin = "Sukses Login";
          //         });
          //       }
          //       else{
          //         setState(() {
          //           statusLogin = "Gagal Login";
          //         });
          //       }
          //       print("status "+statusLogin);
          //     },
          //     child: Text("Login")),
          //   ),


            TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()),
              );
            },
            child: Text(
              'Belum punya akun? Daftar',
              style: TextStyle(color: Colors.blue),
            ),
          ),

            Text(statusLogin)

          ],
        ),
      ),
    );
  }
}