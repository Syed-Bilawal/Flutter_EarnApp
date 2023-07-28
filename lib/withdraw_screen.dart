import 'package:flutter/material.dart';
import 'package:withdrawal_app/constant.dart';

class WithDraw extends StatefulWidget {
  const WithDraw({super.key});

  @override
  State<WithDraw> createState() => _WithDrawState();
}
final now = DateTime.now();
class _WithDrawState extends State<WithDraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Transaction approval needed' , style: TextStyle(fontWeight: FontWeight.w600 ,color: Colors.black),),),
      body: Padding( 
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( decoration: BoxDecoration(color: KPrimaryColor, borderRadius: BorderRadius.circular(20)),
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Text('FROM' , style: TextStyle(color: Colors.white ,fontSize: 12 ),),
                       Text('NOBLE EARN SERVICES' , style: TextStyle(color: Colors.white ,fontSize: 12 ))
                    ],
                     ),
                     Padding(padding: EdgeInsets.only(top: 20)),

                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Text('$now' , style: TextStyle(color: Color.fromARGB(255, 12, 12, 12) ,fontSize: 12 ),),
                         Text('account name' , style: TextStyle(color: Colors.white, fontSize: 12 ))
                      ],
                       ),
                        Padding(padding: EdgeInsets.only(top: 20)),

                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Icon(Icons.home_filled ,color: Colors.white,size: 40,),
                         Text('NOBLE EARN PAYMENT' , style: TextStyle(color: Colors.white,fontSize: 12 ))
                      ],
                       ),
                  ],
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 30),
             child: Align( alignment: Alignment.topLeft,
               child: Container(height: 20,
                width: 5, color: Colors.black,
               ),
             ),
           ),
          Container( decoration: BoxDecoration(color: KPrimaryColor.withOpacity(.5), borderRadius: BorderRadius.circular(20)),
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Text('TO' , style: TextStyle(color: Colors.white ,fontSize: 12 ),),
                       Text('674791615616' , style: TextStyle(color: Colors.white ,fontSize: 12 ))
                    ],
                     ),
                     Padding(padding: EdgeInsets.only(top: 20)),

                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Text('aggq' , style: TextStyle(color: Color.fromARGB(255, 12, 12, 12) ,fontSize: 12 ),),
                         Text('AMOUNT' , style: TextStyle(color: Colors.white, fontSize: 12 ))
                      ],
                       ),
                        Padding(padding: EdgeInsets.only(top: 20)),

                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Icon(Icons.swap_horiz_outlined ,color: Colors.white,size: 40,),
                         Text('NOBLE EARN PAYMENT' , style: TextStyle(color: Colors.white,fontSize: 12 ))
                      ],
                       ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
          Center(
            child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
             color: KPrimaryColor),height: 40,
              child: ElevatedButton(onPressed: () {
                
              }, child: Text('WITHDRAW NOW'), style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)))
              ),),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 50)),

          Center(child: Icon(Icons.access_time_outlined, size: 100,))


          ],
        ),
      ),


    );
  }
}