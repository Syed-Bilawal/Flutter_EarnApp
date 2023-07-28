import 'package:flutter/material.dart';

import 'package:withdrawal_app/constant.dart';
import 'package:withdrawal_app/info.dart';
import 'package:withdrawal_app/withdraw_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.white,
      elevation: 0,
        centerTitle: true,
        title: Text('Good Morning' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600 , ),) ,  ),
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Padding(padding: EdgeInsets.only(top: 10)),
              Text('come back every day to mine and withdraw', style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 10)),
      
              Container(height: 130, 
              decoration: BoxDecoration( color: KPrimaryColor,
              borderRadius: BorderRadius.circular(10)),
             
              child: Column(children: [ Padding(padding: EdgeInsets.only(top: 10)),
                Align(child:
                
                 Container( padding: EdgeInsets.only(right: 20),
                  child: Text('6164646' , style: TextStyle(color: Colors.white ),)) , alignment: Alignment.topRight,),
                  Align(child:
                
                 Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('WITHDRAW BALANCE',style: TextStyle(color: Colors.white ))) , alignment: Alignment.topLeft,),
                  Align(child:
                
                 Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('imran ',style: TextStyle(color: Colors.white ))) , alignment: Alignment.topRight,),
                  Align(child:
                
                 Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('10,000' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.white), ) ) , alignment: Alignment.topLeft,),
        
        
              ]),
              ),
              Padding(padding:EdgeInsets.only(top: 20) ),
      
              InkWell( 
                child: Align( alignment: Alignment.center,
                  child: Container( decoration: BoxDecoration(color: KPrimaryColor, borderRadius: BorderRadius.circular(20)),
                    height: 50, width: 50,
                    child: Center(child: Text('Start')),
                  ),
                ) ,
              ),
               Padding(padding:EdgeInsets.only(top: 20) ),
      
              Container( alignment: Alignment.center, 
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)), height: 40,
                  child: ElevatedButton(onPressed: () { 
                     Navigator.push(context,MaterialPageRoute(builder: (context) => const AInformation()),
                     

  );
                    
                  }, child: Text('WITHDRAW NOW' ,style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black) , ),
                  style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)))
              ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
      
            Container(height: 80,width: 500,
             decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: KPrimaryColor.withOpacity(.5) ),
            child: 
            Column( 
              children: [ Padding( 
                padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10 , ),
                child: Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                  children: [ 
                    Icon(Icons.key),
                    Text('NOBLE ID',) , Spacer(),
                    Text('transaction history', style: TextStyle( color: Colors.black , fontWeight: FontWeight.w600),)],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('*****4Bdjf144j', textAlign: TextAlign.left,)),
            ) 
              ],
            
            )
             
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text('Top Services' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600),),
      
            Padding(padding: EdgeInsets.only(top: 20)),
            Text('Quick Menu' ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600)),
            Padding(padding: EdgeInsets.only(top: 30)),
      
      
            Row(
              children: [
                Expanded(child: TextButton(onPressed: () {
                  
                }, child: Column(
                  children: [  Icon(Icons.data_array),Text('Buy data'),],
                ))),
              Expanded(child: TextButton(onPressed: () {
                
              }, child:Column(
                children: [
                  
                  Icon(Icons.article_outlined),Text('Buy airtime'),
                ],
              ) )),
               Expanded(child: TextButton(onPressed: () {
                
              }, child:Column(
                children: [
                  
                  Icon(Icons.account_balance_wallet_rounded),Text('add fund'),
                ],
              ) ))
              
              
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Expanded(child: TextButton(onPressed: () {
                  
                }, child: Column(
                  children: [  Icon(Icons.money),Text('Transections'),],
                ))),
              Expanded(child: TextButton(onPressed: () {
                
              }, child:Column(
                children: [
                  
                  Icon(Icons.transfer_within_a_station_rounded),Text('Transfer'),
                ],
              ) )),
               Expanded(child: TextButton(onPressed: () {
                
              }, child:Column(
                children: [
                  
                  Icon(Icons.logout),Text('Log out'),
                ],
              ) ))
              
              
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Align(
              alignment: Alignment.center,
              child:  Text('No Internet Conection' , style: TextStyle(fontWeight: FontWeight.w600),)),
            
             Padding(padding: EdgeInsets.only(top: 30)),
            Center(child: Icon(Icons.wifi_off,size: 60,))
            
            ],
          ),
        ),
      ),
    );
  }
}