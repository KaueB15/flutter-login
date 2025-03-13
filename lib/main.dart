import 'package:flutter/material.dart';
import 'package:login/utils/image.utils.dart';
import 'package:login/widgets/button.widget.dart';
import 'package:login/widgets/input.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entre na sua conta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Entre na sua conta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      //
      child: Scaffold(
        //
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 255, 156, 230),
        ),
        //
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Container(
                width: 150,
                height: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage(ImageUtils.IMG_AVATAR,),
                ),
              ),
              //
              SizedBox(
                height: 40,
              ),
              //
              InputWidget(
                id: 1, 
                label: "Digite seu email", 
                icon: false
              ),
              //
              SizedBox(
                height: 20,
              ),
              //
              InputWidget(
                id: 2, 
                label: "Digite sua senha", 
                icon: true
              ),
              //
              SizedBox(
                height: 30,
              ),
              //
              ButtonWidget(
                id: 1, 
                text: "Entrar", 
                textColor: Colors.white, 
                buttonColor: Color.fromARGB(255, 147, 197, 255),
              ),
              //
              SizedBox(
                height: 20
              ),
              Text("Ou"),
              SizedBox(
                height: 20
              ),
              //
              ButtonWidget(
                id: 2, 
                text: "Criar uma nova conta", 
                textColor: Colors.white, 
                buttonColor: Color.fromARGB(255, 255, 125, 125)
              ),
              //
              SizedBox(
                height: 20
              ),
              //
              ButtonWidget(
                id: 3, 
                text: "Recuperar conta", 
                textColor: Color.fromARGB(255, 102, 102, 102), 
                buttonColor: Color.fromARGB(255, 255, 192, 129)
              ),
              //

            ],
          ),
        )
        //
      ),
    );
  }
}
