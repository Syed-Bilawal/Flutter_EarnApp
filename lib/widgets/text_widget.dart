import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
   this.name,
    this.label,
     this.iconData,
    this.keyboardType,
    this.validator,
    this.amount
  });
  final TextEditingController? amount;
  final TextEditingController? name;
  final String? label;
  final IconData? iconData;
  final TextInputType? keyboardType;
  final Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        controller: name,
        
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      //   validator: (value) {
      //     if (value!.isEmpty) return "This Field is required";
      //     if (!(value.isEmail)) return "Please provide correct email address";
      //     return null;
      //  },
       validator: (String?Value){
        if(Value!.isEmpty){
          return 'this field is required';
        }
        if (validator!= null){
          return validator!(Value);
          
        }
        return null;
       },
        decoration: InputDecoration(
          labelText: label,
          isDense: true,
          prefixIcon:  Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}