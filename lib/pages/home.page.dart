import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  HomePage({
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //
      child: Scaffold(
        //
        appBar: AppBar(
          title: Text("Criar uma nova conta"),
          backgroundColor: Color.fromARGB(255, 255, 156, 230),
        ),
        //
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PAGINA HOME DO APLICATIVO",
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              
            ),
          ),
        ),
      ),
      //
    );
  }
}