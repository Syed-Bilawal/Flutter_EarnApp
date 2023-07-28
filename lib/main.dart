import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:withdrawal_app/home_screen.dart';
import 'package:withdrawal_app/info.dart';
import 'package:withdrawal_app/login.dart';
import 'package:withdrawal_app/main_screen.dart';
import 'package:withdrawal_app/model/user.dart';
import 'package:withdrawal_app/withdraw_screen.dart';


void main() {
  runApp(const MyApp());
}
  Sinup? user;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor:  Color.fromARGB(255, 1, 49, 3)),
        useMaterial3: false,
      ),
      home:  MyLogin(),
     // home:  MainScreen(),
      //home:  WithDraw(),
    );
  }
}


