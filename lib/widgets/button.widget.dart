import 'package:flutter/material.dart';
import 'package:login/pages/register.page.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    super.key,
    required this.id,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
    });

    late int id;
    late String text;
    late Color textColor;
    late Color buttonColor;
    late VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(buttonColor),
        fixedSize: WidgetStatePropertyAll(Size(350, 48)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )
        ),
      ), 
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}