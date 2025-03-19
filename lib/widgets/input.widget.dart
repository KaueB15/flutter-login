import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  
  InputWidget({
      super.key,
      required this.id,
      required this.label,
      this.suffixIcon,
      this.prefixIcon,
      required this.controller,
      required this.validator
      });


  late TextEditingController controller;  
  late String? Function(String?) validator;
  late int id;
  late String label;
  Icon? prefixIcon;
  Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 58,
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          labelText: label,
          prefixIcon: IconButton(
            onPressed: null,
            icon: prefixIcon ?? SizedBox(),
          ),
          suffixIcon: IconButton(
            onPressed: null, 
            icon: suffixIcon ?? SizedBox(),
          )
        ),
      ),
    );
  }
}