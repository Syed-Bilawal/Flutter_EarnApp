
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:withdrawal_app/home_screen.dart';
import 'package:withdrawal_app/withdraw_screen.dart';



import '../model/user.dart';



class UserController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController account = TextEditingController();
  TextEditingController amount = TextEditingController();
  final formKey = GlobalKey<FormState>();
   String? str;
   final bankSelected = TextEditingController();
List <String>  bank =[
'one',
'two'

];
  void signIn() async{
    
    if (formKey.currentState!.validate()) {
    if (str == null) {
    }
    print("Valid");
    Get.snackbar('Success', 'User Logged In Successfully');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sinup user = Sinup('asdd', name.text, account.text);
    await prefs.setString('user', user.toJson());
    Get.to(
        transition: Transition.fadeIn,
        duration: const Duration(seconds: 1),
        () => const HomeScreen());
    } else {
    Get.snackbar('Failed', 'Something went wrong',
        backgroundColor: Colors.red);
    }
  }


 void withD() {
    
    if (formKey.currentState!.validate()) {
    if (str == null) {
    }
    print("Valid");
   
    Get.to(() => const WithDraw());
    } else {
    Get.snackbar('Failed', 'these fields are required',
        backgroundColor: Colors.red);
    }
  }
}