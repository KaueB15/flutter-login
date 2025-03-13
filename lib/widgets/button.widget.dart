import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    super.key,
    required this.id,
    required this.text,
    required this.textColor,
    required this.buttonColor
    });

    late int id;
    late String text;
    late Color textColor;
    late Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(buttonColor),
        fixedSize: WidgetStatePropertyAll(Size(350, 48)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )
        ),
      ),
      onPressed: null, 
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}