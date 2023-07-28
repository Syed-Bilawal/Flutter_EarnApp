
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:withdrawal_app/login.dart';

import 'home_screen.dart';
import 'main.dart';
import 'model/user.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    myInit();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [ IconButton(onPressed: () {
        Get.to(());
      }, icon: Icon(Icons.person))]),
    );
  }
  
  void myInit() async{
      
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('user')){
    String userJson = prefs.getString('user')!;
    print('user-> $userJson');
     user = Sinup.fromJson(userJson); 
    Get.to(() => HomeScreen());
  }
  else{
    Get.to(() => MyLogin());
  }


  }
}