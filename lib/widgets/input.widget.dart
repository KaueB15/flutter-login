import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  
  InputWidget({
      super.key,
      required this.id,
      required this.label,
      required this.icon,
      });

    
  late int id;
  late String label;
  late bool icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 58,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          labelText: label,
          suffixIcon: IconButton(
            onPressed: null, 
            icon: icon ? Icon(Icons.visibility) : SizedBox.shrink(),
            )
        ),
      ),
    );
  }
}