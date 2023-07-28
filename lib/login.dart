import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:withdrawal_app/controler/controler.dart';
import 'package:withdrawal_app/widgets/pass_widget.dart';
import 'package:withdrawal_app/widgets/text_widget.dart';

import 'home_screen.dart';
import 'main.dart';
import 'model/user.dart';



class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  void initState() {
    super.initState();
   myInit();
  }
   final c = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(backgroundColor: Colors.white, elevation: 0,) ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form( key: c.formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Align(
                alignment: Alignment.topLeft,
                child: Text('START CASHING OUT NOW!', style: TextStyle(color:Colors.black , fontWeight: FontWeight.w600),)),
              Padding(padding: EdgeInsets.only(top: 20)),
              Align(
                alignment: Alignment.topLeft,
                child: Text('NAME', style: TextStyle(color:Colors.black54,fontWeight: FontWeight.w600),)),
              TextFieldWidget(name:c.name , label: 'Name', iconData: Icons.person),
              Padding(padding: EdgeInsets.only(top: 20)),
              Align(
                alignment: Alignment.topLeft,
                child: Text('ACCOUNT NUMBER', style: TextStyle(color:Colors.black54,fontWeight: FontWeight.w600),)),
                TextFieldWidget(amount: c.amount),
                Padding(padding: EdgeInsets.only(top: 20)),
        
                Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)), width: 500,height: 40,
                  child: ElevatedButton(onPressed: () {
                    c.signIn();
                   // Get.to(()=> HomeScreen());
                  }, child: Text('GO TO EARNING')),
                ),
            ],
          ),
        ),
      ),
    );
  }
  
 
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