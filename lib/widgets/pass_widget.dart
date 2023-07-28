import 'package:flutter/material.dart';

class PassFieldWidget extends StatefulWidget {
  const PassFieldWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<PassFieldWidget> createState() => _PassFieldWidgetState();
}

class _PassFieldWidgetState extends State<PassFieldWidget> {
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.visiblePassword,
        autovalidateMode: 
        AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty){ 
            return null;}
          
          return null;
        },
        obscureText: obsecure,
        decoration: InputDecoration(
         // labelText: 'Acount Number',
          isDense: true,
          
          suffixIcon: InkWell(
            child: Icon(obsecure ? Icons.visibility : Icons.visibility_off),
            onTap: () {
              setState(() {
                obsecure = !obsecure;
              });
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}