import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:withdrawal_app/constant.dart';
import 'package:withdrawal_app/widgets/drop.dart';
import 'package:withdrawal_app/widgets/pass_widget.dart';
import 'package:withdrawal_app/widgets/text_widget.dart';
import 'package:withdrawal_app/withdraw_screen.dart';

import 'controler/controler.dart';

class AInformation extends StatefulWidget {
  const AInformation({super.key});


  @override
  State<AInformation> createState() => _AInformationState();
}

class _AInformationState extends State<AInformation> {
  
   final b = Get.put(UserController());
String? newValue;
    List items =[
    'one',
    'two'

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transfer to bank account', style: TextStyle(color: Colors.black87), ), backgroundColor: Colors.white,),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                height: 200,width: 550, decoration: BoxDecoration(border:Border.all(color: KPrimaryColor, width: 2) ,
                 borderRadius: BorderRadius.circular(10)),
                 
                 child: Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('ACCOUNT NUMBER' , style: TextStyle(fontWeight: FontWeight.w600),)),
                        
                        PassFieldWidget(controller:b.account ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                         Align(
                        alignment: Alignment.topLeft,
                        child: Text('ACCOUNT NAME' , style: TextStyle(fontWeight: FontWeight.w600),)),
                        TextFieldWidget(name: b.name, ),
                      
                 
                    ],
                   ),
                 ),
                        
              ),
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Bank' , style: TextStyle(fontSize:18 ,fontWeight: FontWeight.w600),)),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButton(
                 underline: SizedBox(),
                  elevation: 0,
                  style: TextStyle(),
                  padding: EdgeInsets.only(left: 10),
                  hint: Text('BANKS'),
                  value: newValue,
                  items: items.map((valueItem){
                    return DropdownMenuItem(value: valueItem,
                    child: Text(valueItem),
                    );
                  }).toList(),
                  onChanged: (newValue) => setState(() {
                    this.newValue = newValue as String?;
                  }),
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                ),
              ),
            
            Align(
              alignment: Alignment.topLeft,
              child: Text('AMOUNT' , style: TextStyle(fontWeight: FontWeight.w600),)),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFieldWidget(amount: b.amount, )
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text('available balance 100,000\$' , style: TextStyle(color: Colors.green),),
                  SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                  b.withD();
                      //Get.to(()=> WithDraw());
                    },
                    child: Text('NEXT'),
                    style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), 
                      topRight: Radius.circular(20)  )),
                  height: 40,
      
                  // color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyle(color: Colors.black , fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                  ),
                  width: double.infinity,
                  height: 100,
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    'No Transactions Made',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        
        );
      
    
  }
}
