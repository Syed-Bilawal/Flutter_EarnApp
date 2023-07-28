import 'package:flutter/material.dart';
import 'package:withdrawal_app/constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (body: Column(
      children: [
        Container(height: 500,
          decoration: BoxDecoration(color: KPrimaryColor , 
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('NOBLE EARN' ,  style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w500, fontSize: 18
              ),),
             Align( alignment: Alignment.center,
               child: Container(width: 70,
                 child: Divider(
                  height: 20,
                  thickness: 5,
                  color: Colors.green,
                 ),
               ),
             )
            ],
          ),
          
        ),
       Padding(padding: EdgeInsets.only(top: 10)),
       Container( width: 300, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
         child: Divider(
          color: KPrimaryColor,
          height: 20,
          thickness: 5,
          endIndent: 5,
         ),
       ) 
      ],
    ));
  }
}